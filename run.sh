#!/bin/bash

docker-compose up -d --build
docker-compose run --rm gmail_pisher bash
