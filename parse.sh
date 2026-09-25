#!/bin/sh
# usage: ./parse.sh [input.pdf] [output.txt]

set -eu

INPUT="${1:-resume.pdf}"
OUTPUT="${2:-resume-parsed.txt}"

[ -f "$INPUT" ] || { echo "no such file: $INPUT" >&2; exit 1; }

command -v pdftotext >/dev/null 2>&1 || {
    echo "pdftotext not found, install poppler-utils" >&2
    exit 1
}

pdftotext -nopgbrk "$INPUT" "$OUTPUT"
echo "wrote $OUTPUT"