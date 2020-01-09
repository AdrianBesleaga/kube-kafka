#!/bin/bash

MY_DIR=`dirname $0`
MY_DIR=`cd $MY_DIR/../; pwd`

. $MY_DIR/conf/env.sh


$KAFKA_HOME/bin/kafka-producer-perf-test.sh --topic perf-rep1 \
	--num-records 10000000 \
	--record-size 100 \
	--throughput -1 \
	--producer.config $MY_DIR/conf/producer.properties


# bash-4.4# ./p1-rep1.sh
# 3038359 records sent, 606822.2 records/sec (57.87 MB/sec), 19.3 ms avg latency, 310.0 ms max latency.
# 4143820 records sent, 828764.0 records/sec (79.04 MB/sec), 16.4 ms avg latency, 256.0 ms max latency.
# 10000000 records sent, 767931.193365 records/sec (73.24 MB/sec), 14.21 ms avg latency, 310.00 ms max latency, 3 ms 50th, 100 ms 95th, 142 ms 99th, 208 ms 99.9th.
