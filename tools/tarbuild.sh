
# The purpose of building in this manner is to expand symlinks in your build context during development.

DIR="$( cd "$( dirname "$0" )" && pwd )"
cd $DIR/../msl-celery

tar -czh . | docker build --force-rm=true -t richardbronosky/msl-celery -
