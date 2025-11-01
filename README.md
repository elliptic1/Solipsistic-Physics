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
  chapters and closing reflections.
- `Solipsistic Physics.md` – a longer draft discussing how physics could be
  formulated for a universe consisting of a single observer.
- `Solipsistic Cosmology.md` – notes on cosmological implications in this
  framework.
- `math_cheatsheet.md` – quick reference of key equations.
- `math_review.md` – notes on where the draft's mathematics needs more precision.

## Prerequisites

To generate PDFs or EPUBs you will need the following tooling available on
your system:

- [pandoc](https://pandoc.org/) for document conversion
- A LaTeX distribution (for example, TeX Live) when building PDF outputs
- `zsh` to execute the helper scripts bundled with the repository

On Debian/Ubuntu systems these dependencies can be installed with:

```bash
sudo apt-get update
sudo apt-get install pandoc texlive-full zsh
```

## Building the book

The chapters can be converted to a single document using a tool such as
[pandoc](https://pandoc.org/):

```bash
pandoc chapters/title.md \
       chapters/preface.md \
       chapters/overview.md \
       chapters/part1_intro.md \
       chapters/chapter*.md \
       chapters/part3_reflections.md \
       -o solipsistic-physics.pdf
```

For convenience, helper scripts `build_book.zsh` and `build_pdf.zsh` are
provided. Running `build_book.zsh` will produce a single file (PDF by default)
by concatenating all chapters and notes, while `build_pdf.zsh` wraps the same
process with defaults tailored for PDF output, including the metadata specified
in `metadata.yaml`.  You may specify a different output filename to create an
EPUB for e-readers such as Kindle. Both scripts require `zsh`, `pandoc`, and,
for PDF targets, a LaTeX distribution to be installed:

```bash
# PDF (default)
./build_book.zsh
# or generate an EPUB
./build_book.zsh solipsistic-physics.epub
```

## Contributing

This project is experimental and remains a work in progress.  If you wish to
propose changes or additional content, please open an issue or submit a pull
request describing your ideas. When contributing text, please keep the
philosophical tone accessible while backing claims with references that can be
typeset in Markdown/LaTeX.  For structural adjustments, update the appropriate
chapter files under `chapters/` and, if needed, refresh the metadata in
`metadata.yaml` so the build scripts continue to produce accurate front matter.
