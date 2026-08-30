# [maciejtwarog.dev/resume.pdf](https://maciejtwarog.dev/resume.pdf)

My resume, written in $\LaTeX{}$ and automatically published to my website with GitHub Actions workflow.

## Compile locally

```bash
xelatex resume.tex
```

## Release

```bash
sh release.sh
```

Creates and pushes a GitHub tag, triggering the release workflow, which compiles the resume, creates a GitHub release, and uploads the PDF to Vercel Blob.
