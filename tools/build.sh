DIR="$( cd "$( dirname "$0" )" && pwd )"
cd $DIR/..

docker build --force-rm=true -t richardbronosky/msl-celery msl-celery
