#!/bin/bash

REPO_DIR="/home/nour/finalProject"
JENKINS_URL="http://localhost:8080"
JOB_NAME="testJob"
JENKINS_USER="nour"
JENKINS_TOKEN="11e86fef606326f4735580a7edb81b91a8"

git add .
git commit -m "auto commit"
git push origin main
echo "Code uploaded successfully"

# Trigger Jenkins build
#curl -u nour:11cdd25d3e889b78c1fe8684ead4e7b2a1 \
 #    -X POST "http://localhost:8080/job/testJob/build?token=finalProjectToken"

curl -X POST \
  "$JENKINS_URL/job/$JOB_NAME/build" \
  --user "$JENKINS_USER:$JENKINS_TOKEN"

echo "✔ Push + Jenkins trigger done"