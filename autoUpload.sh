#!/bin/bash
git add .
git commit -m "auto commit"
git push origin main
echo "Code uploaded successfully"

if curl -s -o /dev/null -w "%{http_code}" \
   "http://192.168.1.25:8080/job/testJob/build?token=finalProjectToken" | grep -q "201"; then
  echo "Jenkins build triggered successfully."
else
  echo "Failed to trigger Jenkins build."
fi
