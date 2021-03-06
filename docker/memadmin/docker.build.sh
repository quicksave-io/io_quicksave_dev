#!/usr/bin/env bash

[[ ! -d memadmin ]] && git clone https://github.com/junstor/memadmin
rm -fr ./memadmin/.git/
cat Dockerfile.in | envsubst > Dockerfile
sudo docker build -t quicksave/memadmin .