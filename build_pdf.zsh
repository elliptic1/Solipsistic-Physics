#!/usr/bin/env zsh
# Build the Solipsistic Physics book into a single PDF.
#
# This script can be sourced to reuse the `build_pdf` function, or executed
# directly to produce a PDF. Usage:
#   ./build_pdf.zsh [output-file]

set -e

script_path=${(%):-%N}
repo_root=${script_path:A:h}

build_pdf() {
  emulate -L zsh
  setopt err_return pipe_fail extended_glob null_glob

  local output=${1:-solipsistic-physics.pdf}

  if ! command -v pandoc >/dev/null 2>&1; then
    print -u2 "Error: pandoc not found. Please install pandoc."
    return 1
  fi

  local chapter_dir="$repo_root/chapters"
  local metadata_file="$repo_root/metadata.yaml"

  local -a chapter_files=("$chapter_dir"/chapter<->.md(NOn))

  local -a files=(
    "$chapter_dir/title.md"
    "$chapter_dir/preface.md"
    "$chapter_dir/overview.md"
    "$chapter_dir/part1_intro.md"
    "${chapter_files[@]}"
    "$chapter_dir/part3_reflections.md"
    "$chapter_dir/references.md"
  )

  pandoc "${files[@]}" --metadata-file="$metadata_file" -o "$output"
  print "Created $output"
}

if [[ -z ${BUILD_PDF_SOURCING:-} ]]; then
  build_pdf "$@"
fi
