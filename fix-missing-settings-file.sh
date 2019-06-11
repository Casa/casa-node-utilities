#!/usr/bin/env bash

# delete the settings file if it exists
sudo rm /mnt/data/volumes/applications_settings/_data/settings.json

# replace with a default settings file
sudo echo '{"bitcoind":{"bitcoinNetwork":"mainnet","bitcoindListen":true,"bitcoindTor":false},"lnd":{"chain":"bitcoin","backend":"bitcoind","lndNetwork":"mainnet","autopilot":false,"externalIP":"","lndTor":false},"system":{}' | sudo tee --append /mnt/data/volumes/applications_settings/_data/settings.json

# restart the manager
docker restart manager
