docker exec lnd rm /root/.lnd/data/chain/bitcoin/mainnet/admin.macaroon
docker exec lnd rm /root/.lnd/data/chain/bitcoin/mainnet/invoice.macaroon
docker exec lnd rm /root/.lnd/data/chain/bitcoin/mainnet/readonly.macaroon
docker exec lnd rm /root/.lnd/data/chain/bitcoin/mainnet/wallet.db
docker exec lnd rm /root/.lnd/data/chain/bitcoin/mainnet/macaroons.db
docker exec lnd rm /root/.lnd/data/graph/mainnet/channel.db
docker exec lnd rm /root/.lnd/data/graph/mainnet/sphinxreplay.db
docker exec manager rm /accounts/user.json
docker restart lnd
pushd /usr/local/casa/applications
docker-compose -f manager.yml up -d 
popd
