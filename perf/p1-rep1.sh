#!/bin/bash

MY_DIR=`dirname $0`
MY_DIR=`cd $POC_HOME/../; pwd`

. $MY_DIR/conf/env.sh


$KAFKA_HOME/bin/kafka-producer-perf-test.sh --topic perf-rep1 \
	--num-records 50000000 \
	--record-size 100 \
	--throughput -1 \
	--producer.config $MY_DIR/conf/producer.properties