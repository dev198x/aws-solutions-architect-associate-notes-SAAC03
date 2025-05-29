#!/bin/bash
set -e
python -m pip install --upgrade pip
pip install mkdocs-material==9.5.3 mkdocs-roamlinks-plugin==0.3.1 mkdocs-mermaid2-plugin==1.1.1
mkdir -p docs
find . -maxdepth 1 -type f \( -name "*.md" -o -name "*.yaml" -o -name "*.yml" \) ! -name "mkdocs.yaml" -exec mv {} docs/ \;
[ -f docs/mkdocs.yaml ] && cp docs/mkdocs.yaml mkdocs.yaml
[ -f docs/README.md ] && cp docs/README.md docs/index.md
mkdocs build