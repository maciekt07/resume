# [maciejtwarog.dev/resume.pdf](https://maciejtwarog.dev/resume.pdf)

My resume, written in $\LaTeX{}$ and automatically published to my website with GitHub Actions workflow.

## Compile locally

```bash
xelatex resume.tex
```

or

```bash
latexmk -xelatex resume.tex
```

In VS Code with the LaTeX Workshop extension, the project compiles automatically on save.

The optional `.devcontainer` runs the same Docker setup as CI.

## Release

```bash
sh release.sh
```

Creates and pushes a GitHub tag, triggering the release workflow, which compiles the resume, creates a [GitHub release](https://github.com/maciekt07/resume/releases/latest/), and uploads the PDF to Vercel Blob.
