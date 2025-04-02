#!/bin/bash

# Path to your OrcaSlicer configs
CONFIG_DIR="."

# Navigate to the config directory
cd "$CONFIG_DIR"

# Check for changes
if git status --porcelain | grep .; then
  # There are changes, commit them
  git add .
  git commit -m "Automatic backup $(date '+%Y-%m-%d %H:%M:%S')"
  echo "Changes committed on $(date '+%Y-%m-%d %H:%M:%S')"

  # Push to remote repository
  git push origin master
  echo "Changes pushed to remote repository"
else
  echo "No changes detected on $(date '+%Y-%m-%d %H:%M:%S')"
fi
