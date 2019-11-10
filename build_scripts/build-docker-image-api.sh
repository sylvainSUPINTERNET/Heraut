#!/bin/bash
echo 📀 build image for API petsbnb &&
mvn clean install -DskipTests && docker build -f Dockerfile -t $1 .
