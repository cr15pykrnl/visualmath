# VisualMath graphical abstract

[Graphical abstract](assets/visualmath.svg) · [Separate plots](assets/visualmath-plot.svg)

## Scientific brief

Show how representation decisions constrain what a model can learn, how the
paper audits those decisions, and what its literature review and case study
actually establish. Connect the four representation categories to the ten-question
protocol and representation datasheet, then give two distinct evidence panels.

The source is Singh and Dhari (2026), *Machine Learning: Engineering* 2, 025004,
[doi:10.1088/3049-4761/ae7df3](https://doi.org/10.1088/3049-4761/ae7df3).
Metadata and the published abstract were checked against the publisher and
Crossref. Numerical values were checked against the published article, rather
than the earlier manuscript. No publisher illustration is copied.

## Source mapping and limits

- **A: framework and protocol.** Conceptual reconstruction of the four categories
  and ten audit questions, sections 3–4. Icons illustrate encoding, spatial
  extent/resolution, augmentation and label construction. The cluster and
  physical-mode symbols show alternatives, not validated equivalence. The ten
  empty squares represent questions, not completed or successful experiments.
- **B: selected literature review.** Section 4.1, aggregate reporting counts in the text.
  `review-counts.csv` transcribes six counts with a common denominator of 28.
  “Any rationale” includes partial rationale; “Alternatives” means systematic
  representation comparison. These practices overlap; counts must not be summed.
  The selected 2007–2025 sample does not represent all applied machine learning.
- **C: prospective audit.** Section 3.7, feature comparison: seven spatial features
  at 71.2%, 4,096 image features at 69.8%, and image plus spatial features at
  72.2% test accuracy. The combined count of **4,103 is derived as 4,096 + 7**.
  `feature-results.csv` contains these reported values. The horizontal axis is
  logarithmic; the vertical axis starts at 65% to show the small differences.
  Points are different input representations, not a continuous learning curve.
  Accuracy is agreement with constructed K-means targets, not independently
  validated physical-mode accuracy and not the original KNet1 88.08% result.
- **Separate physical check.** Section 3.7 compares clusters with 82 hand-annotated
  frames: normalized mutual information 0.56, adjusted Rand index 0.30. This is
  a separate annotation sample, not the test-set denominator of panel C.

The figures replot reported aggregates. No new simulations, training, statistical
inference or reproduction runs were performed. The article's review scoring,
audit scripts, frame data and annotations are not distributed here. Consult the
publisher's supplementary-material page; its contents have not been verified.

## Authoring and layout

`visualmath.tex` is the editable 4:3 composition (240 × 180 mm).
`plot-panel.tex` exports the quantitative panels separately. `visualmath.gp`
generates the plots with gnuplot's monochrome cairolatex terminal; labels remain
native TeX text. Both CSV inputs are small published-value transcriptions.

All conceptual artwork is newly authored TikZ geometry. No image generator or
participant imagery is used. PNG fallbacks have anti-aliased edges, with 9 pt
Helvetica-compatible native labels. Equal category cells are nested inside the
framework panel. The evidence panels remain separate because their populations
and measures differ; each uses direct labels instead of a shared legend. Citation,
source and artwork credit are right-aligned in the bottom-right footer.

From the repository root:

```sh
sh figures/abstracts/build.sh
```

See [contributing.md](../../contributing.md) for dependencies and central renderer
setup. PDFs are local compilation intermediates in ignored `.local/figures/`;
only selected SVG/PNG exports belong to this release. Rebuilding requires no private inputs.
The full abstract exports at 2,400 × 1,800 pixels; the standalone plots at
2,400 × 1,080 pixels. Inspect both review and full-size output after edits.

The owner selected the vector and anti-aliased export format for these figures. No new reuse licence is
assigned to the figure or source.

## Selected export formats

The project README embeds the anti-aliased PNG with an opaque white background
for visibility in light and dark themes. Clicking the preview opens its SVG. PDF intermediates stay in ignored local storage;
no PDFs are published. Poppler's `pdftocairo` is required for SVG export.

These SVGs contain native vector geometry, plots and glyph outlines with no
embedded bitmap images. Keep the TeX sources for editable labels.

PNG fallbacks: [visualmath-plot](assets/visualmath-plot.png) · [visualmath](assets/visualmath.png)
