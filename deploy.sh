#!/usr/bin/env sh

# abort on errors
set -e

npm run build

git add dist && git commit -m "deploy to gh-pages"

git subtree push --prefix dist origin gh-pages