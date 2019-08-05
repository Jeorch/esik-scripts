#!/bin/bash
connector_server="192.168.100.176:8083"
es_server="192.168.100.174:9200"
postdata="{\"name\": \"elasticsearch-sink-${HOSTNAME}\",\"config\": {\"jobId\": \"esik_${HOSTNAME//./_}\",\"topics\": \"esik_${HOSTNAME//./_}\",\"connector.class\": \"io.confluent.connect.elasticsearch.ElasticsearchSinkConnector\",\"tasks.max\": \"1\",\"key.ignore\": \"true\",\"connection.url\": \"http://${es_server}\",\"type.name\": \"\"}}"
echo ${postdata}
curl -X POST -H "Content-Type: application/json" \
      --data "${postdata}" \
      http://${connector_server}/connectors
