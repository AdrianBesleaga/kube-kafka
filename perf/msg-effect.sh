#!/bin/bash

MY_DIR=`dirname $0`
MY_DIR=`cd $MY_DIR/../; pwd`

. $MY_DIR/conf/env.sh

for i in 10 100 1000 10000 100000;
do
	echo ""
	echo "Record size: $i"
	$KAFKA_HOME/bin/kafka-producer-perf-test.sh --topic perf-rep2 \
		--num-records 10000000 \
		--record-size $i \
		--throughput -1 \
		--producer.config $MY_DIR/conf/producer.properties
done;
