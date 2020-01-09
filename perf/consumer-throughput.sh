#!/bin/bash

MY_DIR=`dirname $0`
MY_DIR=`cd $MY_DIR/../; pwd`

. $MY_DIR/conf/env.sh

$KAFKA_HOME/bin/kafka-consumer-perf-test.sh \
	--zookeeper 10.244.2.8:2181 \
	--messages 10000000 \
	--topic perf-rep2 \
	--threads 1
