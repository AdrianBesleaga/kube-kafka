#!/bin/bash

echo "Delete existing logs."
rm -f ../logs/kafka-perf-*.log

echo "Delete pre-run kafka perf client"
for NO in {1..3}
do
    kubectl delete pods kafka-perf-$NO --grace-period=0 --force
done

echo "Creating Kafka perf test pods."
kubectl create -f ../kafka-perf-r3.yaml

echo ""
echo "Running perf tests. See ../logs for results."

