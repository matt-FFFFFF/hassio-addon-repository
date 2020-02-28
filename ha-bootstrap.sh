#!/usr/bin/env bashio

export POSTGRES_USER=$(bashio::config 'user')
export POSTGRES_PASSWORD=$(bashio::config 'password')
export POSTGRES_DB=$(bashio::config 'database')

/usr/local/bin/docker-entrypoint.sh $1