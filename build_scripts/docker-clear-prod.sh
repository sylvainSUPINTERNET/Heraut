#!/usr/bin/env bash
echo ⚡️free up space volumes / containers / images from Docker &&
sudo docker-compose -f docker-compose-prod.yml down && sudo docker system prune -a --force && sudo docker volume prune --force