#!/usr/bin/env zsh
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
  chapters/chapter{1..10}.md
  chapters/part3_reflections.md
  "Solipsistic Physics.md"
  "Solipsistic Cosmology.md"
)

pandoc ${files[@]} -o "$output"

echo "Created $output"
