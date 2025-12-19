#!/bin/bash
set -e

echo "Branch: "
read branch

echo "commit msg: "
read msg

git add .
git commit -m "$msg"
git push origin $branch

echo "Code uploaded successfully to branch '$branch'"
