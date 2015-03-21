
DIR="$( cd "$( dirname "$0" )" && pwd )"
cd $DIR/..
tools/cleanup_containers.sh

# That should take care of the need to do:
[[ $(docker ps -a | grep -c shell) -gt 0 ]] && docker rm -f shell;

docker run -i -t -P --rm --name shell --link redis-server:redis.local \
-v /Users/bruno/src/msl/packages/service_layer:/app \
-v /Users/bruno/src/msl/packages/service_layer_config:/app_config \
richardbronosky/mobile-services-layer tmux
