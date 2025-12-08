# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a book project titled **"Solipsistic Physics: A Universe-of-One"** by Todd B. Smith, PhD. The work explores how M-theory and quantum gravity might be reinterpreted through solipsism—the view that only a single observing mind is truly real.

All content is written in Markdown with LaTeX math notation (using `$...$` for inline and `$$...$$` or `\[...\]` for display math).

## Build Commands

Build the complete book as PDF (requires pandoc and a LaTeX distribution):
```bash
./build_book.sh
```

Build with a different output filename:
```bash
./build_book.sh my-output.pdf
```

Build PDF without metadata:
```bash
./build_pdf.sh
```

### Dependencies

On Debian/Ubuntu:
```bash
sudo apt-get install pandoc texlive-xetex texlive-fonts-recommended
```

## Repository Structure

- `chapters/` - The book's content in reading order:
  - `title.md`, `preface.md`, `overview.md` - Front matter
  - `part1_intro.md` - Part I introduction
  - `chapter1.md` through `chapter9.md` - Core chapters (9 total)
  - `part3_reflections.md` - Closing reflections
  - `references.md` - Bibliography
- `Solipsistic Physics.md` - Extended draft on single-observer physics
- `Solipsistic Cosmology.md` - Cosmological implications
- `math_cheatsheet.md` - Key equations reference
- `math_review.md` - Notes on areas needing mathematical precision
- `cheatsheet.md` - Summary of main concepts
- `metadata.yaml` - Book metadata (title, author) for pandoc

## Writing Conventions

- Each chapter includes an **Everyday Example** subsection grounding abstract ideas in familiar scenarios
- Mathematical notation uses LaTeX: consciousness field `\Psi(x)`, metric functions `A(t,r)`, `B(t,r)`, etc.
- Keep philosophical tone accessible while backing claims with references suitable for Markdown/LaTeX typesetting
- The `math_review.md` file tracks where equations need more rigor—consult it when expanding mathematical content
