#!/usr/bin/env bash
# This script will wipe all bitcoind data to free up space on the sd card.

# stop docker containers
docker stop $(docker ps -aq)

# remove bitcoind
docker rm bitcoind

# remove the bitcoind volume
docker volume rm applications_bitcoind-data

# shutdown device
sudo shutdown now
