#!/usr/bin/env sh

set -x

docker build -t lpass  .

docker run \
  -v "$PWD:/host" lpass sh -c 'cp /work/lastpass-cli/build/*.deb /host'
