# Solipsistic Physics

This repository collects draft material for a book tentatively titled
**"Solipsistic Physics: A Universe-of-One"** by **Todd B. Smith, PhD**.
The work explores how M-theory and modern ideas in quantum gravity might be
reinterpreted through the lens of solipsism—the view that only a single
observing mind is truly real.

All text is written in Markdown with LaTeX used for mathematical notation so
that the chapters can be easily converted to PDF or other publishing formats.

## Repository layout

- `chapters/` – individual Markdown files that form the structure of the book.
  These include the title page, preface, introductory material, ten core
  chapters, closing reflections, and references.
- `math_cheatsheet.md` – quick reference of key equations.
- `math_review.md` – notes on where the draft's mathematics needs more precision.

The chapters can be converted to a single document using a tool such as
[pandoc](https://pandoc.org/):

```bash
pandoc chapters/title.md \
       chapters/preface.md \
       chapters/overview.md \
       chapters/part1_intro.md \
       chapters/chapter*.md \
       chapters/part3_reflections.md \
       chapters/references.md \
       --metadata-file=metadata.yaml \
       -o solipsistic-physics.pdf
```

Two helper scripts are provided:

- `build_pdf.zsh` – gather all chapters and produce a single PDF (or other
  pandoc-supported format when a different output filename is given).
- `build_book.zsh` – call `build_pdf.zsh` and then upload the generated PDF to a
  third-party book service.

Both scripts require `zsh` and `pandoc` to be installed:

```bash
# PDF (default)
./build_pdf.zsh
# or generate an EPUB
./build_pdf.zsh solipsistic-physics.epub
```

## Contributing

This project is experimental and remains a work in progress.  If you wish to
propose changes or additional content, please open an issue or submit a pull
request describing your ideas.
