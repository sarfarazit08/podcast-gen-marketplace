#!/bin/bash

echo "----------------------------------------"

# Git configuration (replace with your details)
git config --global user.email "${INPUT_EMAIL}"
git config --global user.name "${GITHUB_ACTOR}"
git config --global --add safe.directory /github/workspace

# # Clone the repository (replace with your repository URL)
# git clone https://github.com/your-username/your-repository.git

# # Change to the cloned directory
# cd your-repository

# Run the feed.py script
python3 /usr/bin/feed.py

# Add changes to the Git repository
git add .

# Commit changes with a default message
git commit -m "Update feed data"

# Push changes to the remote repository (replace with your branch name)
git push --set-upstream origin main

echo "----------------------------------------"
