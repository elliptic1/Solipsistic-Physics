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

chapter_files=($(find chapters -maxdepth 1 -name 'chapter*.md' | sort -V))

files=(
  chapters/title.md
  chapters/preface.md
  chapters/overview.md
  chapters/part1_intro.md
  ${chapter_files[@]}
  chapters/part3_reflections.md
)

pandoc ${files[@]} -o "$output"

echo "Created $output"
