#!/bin/bash
set -e 
echo 'Start set env.'
export PKG_CONFIG_PATH=/usr/lib/pkgconfig
export LOGGER_DEBUG=true
export BM_KAFKA_CONF_HOME=${PWD}/kafkaconfig.json
export ESIK_TOPIC=esik
echo 'Start esik.'
./esik