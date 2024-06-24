#!/usr/bin/sh

docker-compose down
docker-compose up vscsync 
mkdir -p output
cd output
rm *
tar -cvjf - ../artifacts/* | split -d -a 3 -b 150M - "artifacts.tar.bz2.part"
