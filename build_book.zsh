#!/usr/bin/env zsh
# Build Solipsistic Physics into a single file.
# Usage: ./build_book.zsh [output-file]

set -e

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
)

pandoc \
  --from=markdown+tex_math_dollars+tex_math_single_backslash \
  --metadata-file=metadata.yaml \
  ${files[@]} \
  -o "$output"

echo "Created $output"
