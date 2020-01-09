#!/bin/bash

MY_DIR=`dirname $0`
MY_DIR=`cd $MY_DIR/../; pwd`

. $MY_DIR/conf/env.sh

$KAFKA_HOME/bin/kafka-run-class.sh \
	kafka.tools.TestEndToEndLatency \
	kafka-headless.kafka:29092 \
	10.244.2.8:2181 \
	perf-rep2 \
	10000
