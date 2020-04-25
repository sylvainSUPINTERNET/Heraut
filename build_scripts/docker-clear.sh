#!/usr/bin/env bash
echo ⚡️free up space volumes / containers / images from Docker &&
docker-compose down && docker system prune -a --force && docker volume prune --force