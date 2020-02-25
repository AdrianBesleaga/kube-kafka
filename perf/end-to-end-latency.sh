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
# 0	67.868645
# 1000	3.965288
# 2000	4.326122000000001
# 3000	32.644719
# 4000	4.220397
# 5000	4.7411970000000005
# 6000	4.1444849999999995
# 7000	5.269649
# 8000	3.846875
# 9000	4.414904000000001
# Avg latency: 4.8578 ms

# Percentiles: 50th = 4, 99th = 11, 99.9th = 30