#!/bin/bash

MY_DIR=`dirname $0`
MY_DIR=`cd $MY_DIR/../; pwd`

. $MY_DIR/conf/env.sh


$KAFKA_HOME/bin/kafka-producer-perf-test.sh --topic perf-rep2 \
	--num-records 10000000 \
	--record-size 100 \
	--throughput -1 \
	--producer.config $MY_DIR/conf/producer.properties


# bash-4.4# ./p1-rep2.sh
# 1588336 records sent, 315961.0 records/sec (30.13 MB/sec), 228.9 ms avg latency, 864.0 ms max latency.
# 1785626 records sent, 355560.7 records/sec (33.91 MB/sec), 560.4 ms avg latency, 1605.0 ms max latency.
# 1685908 records sent, 337181.6 records/sec (32.16 MB/sec), 887.5 ms avg latency, 2300.0 ms max latency.
# 1751924 records sent, 350384.8 records/sec (33.42 MB/sec), 827.0 ms avg latency, 1858.0 ms max latency.
# 1664550 records sent, 332910.0 records/sec (31.75 MB/sec), 894.9 ms avg latency, 2350.0 ms max latency.
# 10000000 records sent, 333466.720021 records/sec (31.80 MB/sec), 715.87 ms avg latency, 2350.00 ms max latency, 513 ms 50th, 2011 ms 95th, 2243 ms 99th, 2317 ms 99.9th.
