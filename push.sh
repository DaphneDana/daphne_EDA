#!/bin/bash
# Simple push script for daphne_EDA

# Go to the folder where this script is located
cd "$(dirname "$0")"

# Stage the notebook
git add dana_eda.ipynb

# Use the first argument as commit message, or a default one
MSG=${1:-"Update dana_eda notebook"}

# Commit (if there is something to commit)
git commit -m "$MSG" || echo "Nothing to commit."

# Push to origin main
git push origin main
