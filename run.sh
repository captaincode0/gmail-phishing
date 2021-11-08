#!/bin/bash

echo '' > phisherout.cap
docker-compose up
docker-compose down --remove-orphans
