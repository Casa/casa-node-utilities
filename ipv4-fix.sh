#!/usr/bin/env bash
docker exec manager sed -i '/ethernet/d' /usr/src/app/logic/application.js
docker restart manager

# wait ten minutes for yml files to update then run an update from the UI or the line below without comment
# source /usr/local/casa/launch.sh
