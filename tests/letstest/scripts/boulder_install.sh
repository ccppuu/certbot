#!/bin/bash -x

# >>>> only tested on Ubuntu 14.04LTS <<<<

git clone https://github.com/letsencrypt/boulder $BOULDERPATH
cd $BOULDERPATH
sed -i 's/FAKE_DNS: .*/FAKE_DNS: 172.17.42.1/' docker-compose.yml
docker-compose up -d
