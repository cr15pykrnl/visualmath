# Work on another machine

Clone this repository alongside the owner's research-ops checkout. Configure
the shared Git identity and hooks from the containing workspace:

```sh
python3 -I research-ops/scripts/setup.py
python3 -I research-ops/scripts/setup-project.py --repo visualmath
python3 -I research-ops/scripts/setup-project.py --repo visualmath --check
```

The figure needs Python 3, TeX/TikZ and Helvetica-compatible fonts, Ghostscript,
Poppler and gnuplot with the cairolatex terminal. No private manuscript, raw
simulation data or HF download is needed to rebuild the reported-value plots.
From the repository root:

```sh
sh figures/abstracts/build.sh
```

`GNUPLOT` can select a compatible executable. Editable sources and small published
value tables live in `figures/abstracts/`; generated PDFs/logs remain in ignored
`.local/figures/`. Only the selected SVGs and PNG fallbacks are publication artifacts. Inspect the
native-size and review-size images after edits. The figures are faithful replots,
not a reproduction of the source paper's experiments.

Read `AGENTS.md` before changing scientific claims. Work on `main` and follow
current owner authorization for commits and external publication.

Selected figures use SVG with anti-aliased PNG fallbacks. Rebuilding SVG requires
Poppler's `pdftocairo`; PDF intermediates remain local and ignored.
