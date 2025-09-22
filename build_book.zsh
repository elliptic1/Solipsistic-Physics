#!/usr/bin/env zsh
# Build Solipsistic Physics and send the PDF to a book service.
# Usage: ./build_book.zsh [output-file]

set -e

script_dir=$(dirname "$0")
pdf_output=${1:-solipsistic-physics.pdf}

# Build the PDF using the shared script
"$script_dir/build_pdf.zsh" "$pdf_output"

# Placeholder for publishing: send PDF to a third-party API if desired
# Example:
# curl -F "file=@$pdf_output" https://api.example.com/books

echo "Generated $pdf_output; upload to the book service as needed."
