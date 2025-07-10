#!/bin/bash
# Add, commit, and push all changes with a single script
set -e

git add .
git commit -m "$1"
git push

echo "All changes pushed to GitHub."
