#!/bin/bash

MY_DIR=`dirname $0`
MY_DIR=`cd $MY_DIR/../; pwd`

. $MY_DIR/conf/env.sh

$KAFKA_HOME/bin/kafka-run-class.sh \
	kafka.tools.EndToEndLatency \
	kafka-headless.kafka:29092 \
	perf-e2e-latency \
	10000 \
	all \
	100 


# bash-4.4# ./end-to-end-latency.sh
# 0	109.718331
# 1000	4.842511
# 2000	4.775865
# 3000	4.35212
# 4000	4.122725999999999
# 5000	4.117113000000001
# 6000	4.285398
# 7000	4.0838719999999995
# 8000	3.830594
# 9000	3.920199
# Avg latency: 4.6202 ms

# Percentiles: 50th = 4, 99th = 12, 99.9th = 49
