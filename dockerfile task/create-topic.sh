#!/bin/bash

# Waiting for Kafka to start
# sleep 10

which kafka-topics.sh

# Create a topic
/opt/bitnami/kafka/bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic $KAFKA_TOPIC_NAME