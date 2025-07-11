# Solipsistic Physics

This repository collects draft material for a book tentatively titled
**"Solipsistic Physics: A Universe-of-One"** by **Todd B. Smith, PhD**.
The work explores how M-theory and modern ideas in quantum gravity might be
reinterpreted through the lens of solipsism&mdash;the view that only a single
observing mind is truly real.

All text is written in Markdown with LaTeX used for mathematical notation so
that the chapters can be easily converted to PDF or other publishing formats.

## Repository layout

- `chapters/` – individual Markdown files that form the structure of the book.
  These include the title page, preface, introductory material, ten core
  chapters and closing reflections.
- `Solopsistic Physics.txt` – a longer draft discussing how physics could be
  formulated for a universe consisting of a single observer.
- `Solopsistic Cosmology.txt` – notes on cosmological implications in this
  framework.
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
       -o solipsistic-physics.pdf
```

For convenience, a helper script `build_book.zsh` is provided. Running it will
produce a single file (PDF by default) by concatenating all chapters and notes.
You may specify a different output filename to create an EPUB for e-readers such
as Kindle. The script requires `zsh` and `pandoc` to be installed:

```bash
# PDF (default)
./build_book.zsh
# or generate an EPUB
./build_book.zsh solipsistic-physics.epub
```

## Contributing

This project is experimental and remains a work in progress.  If you wish to
propose changes or additional content, please open an issue or submit a pull
request describing your ideas.
