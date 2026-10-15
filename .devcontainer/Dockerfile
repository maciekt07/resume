ARG TARGETPLATFORM=linux/amd64
FROM --platform=$TARGETPLATFORM ghcr.io/xu-cheng/texlive-alpine-small@sha256:2f81f71846f6416526c63f3fbbbc59733c2cdf7e69fcb7aa99adba186ccb2f09

COPY .devcontainer/install-tex-packages.sh /tmp/install-tex-packages.sh

RUN apk add --no-cache poppler-utils perl perl-yaml-tiny perl-file-homedir \
    && sh /tmp/install-tex-packages.sh \
    && tlmgr install latexindent \
    && rm /tmp/install-tex-packages.sh
