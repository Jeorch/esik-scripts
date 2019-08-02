## esik scripts

Pharbers esik scripts files.

## Dependency
 - https://github.com/PharbersDeveloper/esik

###### Highly dependent env.

|   env_key |   description |
|   ----    |   ----    |
|   GO111MODULE    |   Set value 'on' used to enable go module    |
|   PKG_CONFIG_PATH    |   Dependence of rdkafka    |
|   BM_KAFKA_CONF_HOME    |   Kafka conf for BM kafka lib    |

###### Low dependent env.

|   env_key |   description |
|   ----    |   ----    |
|   LOGGER_DEBUG    |   true or false    |
|   LOG_PATH    |   log store path    |
|   LOGGER_USER    |   log user    |
|   ESIK_TOPIC    |   'Extract System Info to Kafka' Topic    |
|   ESIK_MOUNT_POINT    |   'Extract System Info to Kafka' Disk Mount Point    |
|   ESIK_TICKER_MS    |   'Extract System Info to Kafka' Ticker Millisecond    |

Getting Started
=====================

 - 1.Download esik-scripts && kafka-secrets
```shell script
git clone https://github.com/PharbersDeveloper/esik-scripts
git clone https://github.com/PharbersDeveloper/kafka-secrets
```
 - 2.Initialize esik's dependency (You only need to do this once)
```shell script
sh init-esik-dependency.sh
```
 - 3.Run esik
```shell script
sh start-esik.sh
```
***If you want run esik directly, you should set env before running.***

 - 4.Create Kafka sink-elasticsearch-connector (You only need to do this once)
 ```shell script
 sh create-sink-es-connector.sh
 ```