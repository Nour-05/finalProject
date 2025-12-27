#!/bin/bash

REPO_DIR="/home/nour/finalProject"
JENKINS_URL="http://localhost:8080"
JOB_NAME="testJob2"
JENKINS_USER="nour"
JENKINS_TOKEN="11e86fef606326f4735580a7edb81b91a8"

git add .
git commit -m "auto commit"
git push origin main
echo "Code uploaded successfully"

curl -X POST \
  "$JENKINS_URL/job/$JOB_NAME/build" \
  --user "$JENKINS_USER:$JENKINS_TOKEN"

echo "Push + Jenkins trigger done"