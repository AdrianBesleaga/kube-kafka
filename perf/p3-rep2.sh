#!/bin/bash

echo "Delete existing logs."
rm -f ../logs/kafka-perf-*.log

echo "Creating Kafka perf test pods."
kubectl create -f ../kafka-perf-r3.yaml

echo ""
echo "Running perf tests. See ../logs for results."

