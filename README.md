# Solipsistic Physics

This repository collects draft material for a book tentatively titled
**"Solipsistic Physics: A Universe-of-One"**.  The work explores how M-theory
and modern ideas in quantum gravity might be reinterpreted through the lens of
solipsism&mdash;the view that only a single observing mind is truly real.

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

## Contributing

This project is experimental and remains a work in progress.  If you wish to
propose changes or additional content, please open an issue or submit a pull
request describing your ideas.
