docker exec lnd rm -rf /root/.lnd/data/chain/bitcoin/mainnet/
docker exec lnd rm -rf /root/.lnd/data/graph/mainnet/
docker exec manager rm /accounts/user.json
docker restart lnd
cd /usr/local/casa/applications
docker-compose -f manager.yml up -d 
cd ~
