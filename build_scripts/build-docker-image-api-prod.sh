#!/bin/bash
echo 📀 build image for API petsbnb &&
sudo mvn clean install -DskipTests && sudo docker build -f DockerfileProd -t $1 .
