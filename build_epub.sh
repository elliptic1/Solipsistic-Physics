#!/usr/bin/env bash
# Build Solipsistic Physics into an EPUB for Kindle.
# Usage: ./build_epub.sh [output-file]

set -e

if ! command -v pandoc >/dev/null 2>&1; then
  echo "Error: pandoc not found. Please install pandoc." >&2
  exit 1
fi

output=${1:-solipsistic-physics.epub}

files=(
  chapters/title-epub.md
  chapters/copyright.md
  chapters/preface.md
  chapters/overview.md
  chapters/part1_intro.md
  chapters/chapter{1..9}.md
  chapters/part3_reflections.md
  chapters/references.md
  chapters/glossary.md
  chapters/appendix_math.md
  chapters/further_reading.md
  chapters/about_author.md
)

# Build EPUB with MathML for math rendering
pandoc_args=(
  --from=markdown+tex_math_dollars+tex_math_single_backslash
  --to=epub3
  --metadata-file=metadata-epub.yaml
  --toc
  --toc-depth=2
  --mathml
  --css=epub.css
)

# Add cover image if it exists
if [ -f "cover/cover-ebook.png" ]; then
  pandoc_args+=(--epub-cover-image=cover/cover-ebook.png)
elif [ -f "cover/cover-ebook.jpg" ]; then
  pandoc_args+=(--epub-cover-image=cover/cover-ebook.jpg)
fi

pandoc "${pandoc_args[@]}" ${files[@]} -o "$output"

echo "Created $output"
echo "Test in Kindle Previewer before uploading to KDP."
