#!/bin/bash
git add .
git commit -m "auto commit"
git push origin main
echo "Code uploaded successfully"
curl http://192.168.1.25:8080/job/testJob/build?token=finalProjectToken
