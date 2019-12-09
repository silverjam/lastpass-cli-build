#!/usr/bin/env sh
docker build -t lpass  .
docker run -v $PWD:/host lpass sh -c "cp /work/build/*.deb /host"
