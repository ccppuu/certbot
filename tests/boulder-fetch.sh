#!/bin/bash
# Download and run Boulder instance for integration testing
set -xe

git clone https://github.com/letsencrypt/boulder $BOULDERPATH
cd $BOULDERPATH
sed -i 's/FAKE_DNS: .*/FAKE_DNS: 172.17.42.1/' docker-compose.yml
docker-compose up -d

