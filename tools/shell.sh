[[ $(docker ps -a | grep -c shell) -gt 0 ]] && docker rm -f shell;

docker run -i -t -P --rm --name shell --link redis-server:redis.local richardbronosky/mobile-services-layer /bin/bash
