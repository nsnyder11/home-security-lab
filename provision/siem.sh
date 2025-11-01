#!/bin/bash
apt update -y
apt install -y docker.io docker-compose
mkdir -p /elk
cat > /elk/docker-compose.yml <<EOF
version: '3'
services:
  elasticsearch:
    image: docker.elastic.co/elasticsearch/elasticsearch:8.15.0
    ports: ["9200:9200"]
    environment:
      - discovery.type=single-node
      - xpack.security.enabled=false
  kibana:
    image: docker.elastic.co/kibana/kibana:8.15.0
    ports: ["5601:5601"]
    depends_on:
      - elasticsearch
EOF
cd /elk && docker-compose up -d
