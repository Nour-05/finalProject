#!/bin/bash
git add .
git commit -m "auto commit"
git push origin main
echo "Code uploaded successfully"

# Trigger Jenkins build
curl -u nour:11cdd25d3e889b78c1fe8684ead4e7b2a1 \
     -X POST "http://localhost:8080/job/testJob/build?token=finalProjectToken"

