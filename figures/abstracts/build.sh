#!/bin/sh
set -eu
repo_root=$(CDPATH= cd -- "$(dirname -- "$0")/../.." && pwd)
cd "$repo_root"
mkdir -p .local/figures/plots .local/figures/build .local/figures/export figures/abstracts/assets
cd .local/figures/plots
"${GNUPLOT:-gnuplot}" ../../../figures/abstracts/visualmath.gp
cd "$repo_root"
for name in plot-panel visualmath; do
  python3 -I ../research-ops/.agents/skills/tikz-graphical-abstracts/scripts/render.py \
    "figures/abstracts/$name.tex" --out-dir .local/figures/export \
    --build-dir .local/figures/build --svg
  if [ "$name" = plot-panel ]; then
    cp .local/figures/export/plot-panel.png figures/abstracts/assets/visualmath-plot.png
    cp .local/figures/export/plot-panel.svg figures/abstracts/assets/visualmath-plot.svg
  else
    cp .local/figures/export/visualmath.png figures/abstracts/assets/visualmath.png
    cp .local/figures/export/visualmath.svg figures/abstracts/assets/visualmath.svg
  fi
done
