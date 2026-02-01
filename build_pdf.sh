#!/usr/bin/env bash
# Build the Solipsistic Physics book into a single PDF.
# Usage: ./build_pdf.zsh [output-file]

set -e

# Ensure pandoc is available
if ! command -v pandoc >/dev/null 2>&1; then
  echo "Error: pandoc not found. Please install pandoc." >&2
  exit 1
fi

output=${1:-solipsistic-physics.pdf}

files=(
  chapters/title.md
  chapters/preface.md
  chapters/overview.md
  chapters/part1_intro.md
  chapters/chapter{1..9}.md
  chapters/part3_reflections.md
  chapters/references.md
  chapters/glossary.md
  chapters/appendix_math.md
  chapters/further_reading.md
)

pandoc \
  --pdf-engine=xelatex \
  -V geometry:paperwidth=6in \
  -V geometry:paperheight=9in \
  -V geometry:margin=0.75in \
  -V fontsize=11pt \
  --from=markdown+tex_math_dollars+tex_math_single_backslash \
  ${files[@]} \
  -o "$output"

echo "Created $output"
