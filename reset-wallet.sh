docker exec -it lnd rm /root/.lnd/data/chain/bitcoin/mainnet/admin.macaroon
docker exec -it lnd rm /root/.lnd/data/chain/bitcoin/mainnet/invoice.macaroon
docker exec -it lnd rm /root/.lnd/data/chain/bitcoin/mainnet/readonly.macaroon
docker exec -it lnd rm /root/.lnd/data/chain/bitcoin/mainnet/wallet.db
docker exec -it lnd rm /root/.lnd/data/chain/bitcoin/mainnet/macaroons.db
docker exec -it lnd rm /root/.lnd/data/graph/mainnet/channel.db
docker exec -it lnd rm /root/.lnd/data/graph/mainnet/sphinxreplay.db
docker exec -it manager rm /accounts/user.json
docker restart manager
