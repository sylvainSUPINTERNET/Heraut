#!/bin/bash
echo ⚡️deploy image for API petsbnb on Docker Hub - Registry &&
docker login docker.io --password=$1 --username=$2 &&
docker push $3:$4
