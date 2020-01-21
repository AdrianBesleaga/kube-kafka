#!/bin/bash

for NO in {1..3}
do
    kubectl delete pods kafka-perf-$NO
done

