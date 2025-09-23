#!/usr/bin/env zsh
# Build Solipsistic Physics and send the PDF to a book service.
# Usage: ./build_book.zsh [output-file]

set -e

script_path=${(%):-%N}
repo_root=${script_path:A:h}

BUILD_PDF_SOURCING=1
source "$repo_root/build_pdf.zsh"
unset BUILD_PDF_SOURCING

pdf_output=${1:-solipsistic-physics.pdf}

build_pdf "$pdf_output"

# Placeholder for publishing: send PDF to a third-party API if desired
# Example:
# curl -F "file=@$pdf_output" https://api.example.com/books

echo "Generated $pdf_output; upload to the book service as needed."
