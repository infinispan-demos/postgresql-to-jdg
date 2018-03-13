#!/bin/sh

echo "starting PGSQL Docker Container..."

docker run --name postgres-jdg-demo --rm \
-p 5432:5432 \
-e POSTGRES_USER=postgres \
-e POSTGRES_PASSWORD=postgres \
-e POSTGRES_DB=products \
-d postgres:latest

echo "wait a litle until the container starts up..."
sleep 10

echo "creating demo schema..."

docker run -it --rm \
--link postgres-jdg-demo:postgres \
-v "$(pwd)":/tmp/db:z \
postgres:latest \
psql -h postgres -U postgres -d products -f /tmp/db/create_jdg_psql.sql

docker run -it --rm \
--link postgres-jdg-demo:postgres \
postgres:latest \
psql -h postgres -U postgres -d products -c '\x' -c 'SELECT * FROM PRODUCT LIMIT 3;'
