cd /usr/local/casa/applications/
docker-compose -f lightning-node.yml down
docker-compose -f manager.yml down
docker-compose -f update-manager.yml down
docker-compose -f logspout.yml down
# stop docker containers
docker stop $(docker ps -aq)
# remove all containers
docker rm $(docker ps -aq)
# remove all images
docker rmi $(docker images -q) -f

cd /usr/local/casa/
. launch.sh
