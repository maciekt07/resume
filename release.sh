#!/bin/sh

set -eu

git fetch --tags --quiet

DATE="$(date '+%Y.%m.%d')"
TAG="$DATE"

if git show-ref --verify --quiet "refs/tags/$TAG"; then
    N=2

    while git show-ref --verify --quiet "refs/tags/${DATE}-${N}"; do
        N=$((N + 1))
    done

    TAG="${DATE}-${N}"
fi

echo "Creating release tag: $TAG"

git tag "$TAG"
git push origin "$TAG"

echo "Released $TAG"