#!/usr/bin/env sh

set -x

docker build --tag lpass --force-rm --no-cache  .

docker run \
  -v "$PWD:/host" lpass sh -c 'cp -v /work/lastpass-cli/build/*.deb /host'

ls -l
