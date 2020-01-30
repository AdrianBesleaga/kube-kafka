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


### comparing to bare metal ###
# kafka@fb-ubuntu01$ ./kafka-producer-perf-test --topic perf-rep1 --num-records 30000000 --record-size 100 --throughput -1 --producer.config /tmp/producer.properties
# 4854639 records sent, 970927.8 records/sec (92.59 MB/sec), 2.8 ms avg latency, 207.0 ms max latency.
# 4919982 records sent, 983996.4 records/sec (93.84 MB/sec), 5.0 ms avg latency, 51.0 ms max latency.
# 5034840 records sent, 1006968.0 records/sec (96.03 MB/sec), 4.7 ms avg latency, 22.0 ms max latency.
# 4870878 records sent, 973980.8 records/sec (92.89 MB/sec), 5.1 ms avg latency, 41.0 ms max latency.
# 5600202 records sent, 1120040.4 records/sec (106.82 MB/sec), 3.8 ms avg latency, 32.0 ms max latency.
# 3753522 records sent, 750554.3 records/sec (71.58 MB/sec), 7.0 ms avg latency, 23.0 ms max latency.
# 30000000 records sent, 954593.184205 records/sec (91.04 MB/sec), 4.74 ms avg latency, 207.00 ms max latency, 3 ms 50th, 9 ms 95th, 16 ms 99th, 39 ms 99.9th.