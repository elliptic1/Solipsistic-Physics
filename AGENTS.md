# Repository Guidelines

## Project Structure & Module Organization
- Core draft lives in `chapters/` (title, preface, overview, nine numbered chapters, reflections, references). Order matters for builds.
- Standalone notes: `Solipsistic Physics.md`, `Solipsistic Cosmology.md`, `math_cheatsheet.md`, `math_review.md`, `cheatsheet.md`.
- Build helpers: `build_book.sh` (PDF with metadata and KDP sizing) and `build_pdf.sh` (minimal PDF). Front matter config is in `metadata.yaml`.

## Build, Test, and Development Commands
- Build KDP-ready PDF (uses pandoc, xelatex, metadata, TOC):
  ```bash
  ./build_book.sh                   # outputs solipsistic-physics.pdf
  ./build_book.sh solipsistic.epub  # alternative target
  ```
- Quick PDF without metadata/TOC:
  ```bash
  ./build_pdf.sh
  ```
- Validate prerequisites:
  ```bash
  command -v pandoc && command -v xelatex
  ```
Run builds after changing chapter order, metadata, or math-heavy sections.

## Writing Style & Naming Conventions
- Markdown with LaTeX math (`$...$` inline, `$$...$$` blocks); prefer `\[` `\]` for display equations to avoid dollar collisions.
- Headings use sentence case (`## Quantum fields as priors`); keep depth ≤3 where possible.
- File names: new chapters as `chapters/chapter10.md`, etc. Keep references appendix in `chapters/references.md`.
- Lists and callouts: use standard Markdown; avoid HTML unless pandoc-specific feature is required.
- Keep prose concise and citation-friendly; add references near claims that will need sourcing.

## Testing Guidelines
- Primary check is a successful pandoc build; fix any LaTeX or link errors surfaced during compilation.
- Spot-check rendered PDF/EPUB for equation spacing, TOC correctness, and section ordering after structural edits.

## Commit & Pull Request Guidelines
- Commit messages: imperative mood with focused scope (e.g., `Add chapter8 causal loop draft`, `Refine metadata front matter`). Group related chapter edits together.
- PRs should summarize scope, note affected chapters/files, mention build status (`./build_book.sh`), and call out any remaining citation TODOs or math gaps.
- If visuals or figures are added later, include generation steps or source references in the PR description.

## Security & Configuration Tips
- Do not commit generated PDFs/EPUBs unless explicitly requested; keep outputs local or in releases.
- Verify pandoc/TeXLive versions when debugging build differences; document any flags added to `build_*` scripts.
