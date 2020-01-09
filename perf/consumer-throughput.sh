#!/bin/bash

MY_DIR=`dirname $0`
MY_DIR=`cd $MY_DIR/../; pwd`

. $MY_DIR/conf/env.sh

$KAFKA_HOME/bin/kafka-consumer-perf-test.sh \
	--broker-list kafka-headless.kafka:29092 \
	--messages 10000000 \
	--topic perf-rep2 \
	--threads 1
