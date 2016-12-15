#!/bin/sh


docker-compose up -d multi_db_psql1

docker-compose up -d multi_db_psql2

docker-compose build multi_db

docker-compose run multi_db_test

# docker-compose down
