#!/bin/bash

sudo rm -rf /home/atouba/data/mariadb/*
sudo rm -rf /home/atouba/data/wordpress/*
docker compose down
docker volume rm -f $(docker volume ls -q)

docker compose up --build
