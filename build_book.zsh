#!/usr/bin/env zsh
# Build Solipsistic Physics into a single file.
# Usage: ./build_book.zsh [output-file]

set -e

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
  chapters/references.md
)

pandoc ${files[@]} --metadata-file=metadata.yaml -o "$output"

echo "Created $output"
