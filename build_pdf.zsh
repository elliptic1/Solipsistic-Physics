#!/usr/bin/env zsh
# Build the Solipsistic Physics book into a single PDF.
#
# This script can be sourced to reuse the `build_pdf` function, or executed
# directly to produce a PDF. Usage:
#   ./build_pdf.zsh [output-file]

set -e

build_pdf() {
  local output=${1:-solipsistic-physics.pdf}

  if ! command -v pandoc >/dev/null 2>&1; then
    echo "Error: pandoc not found. Please install pandoc." >&2
    return 1
  fi

  local chapter_files=($(find chapters -maxdepth 1 -name 'chapter*.md' | sort -V))

  local files=(
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
}

if [[ "${(%):-%N}" == "$0" ]]; then
  build_pdf "$@"
fi
