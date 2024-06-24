#!/usr/bin/sh


mkdir -p output
cd output
rm *
docker-compose down
docker-compose up vscsync 
tar -cvjf - ../artifacts/* | split -d -a 3 -b 150M - "artifacts.tar.bz2.part"
