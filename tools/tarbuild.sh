
# The purpose of building in this manner is to expand symlinks in your build context during development.

DIR="$( cd "$( dirname "$0" )" && pwd )"
cd $DIR/../mobile-services-layer

tar -czh . | docker build --force-rm=true -t richardbronosky/mobile-services-layer -
