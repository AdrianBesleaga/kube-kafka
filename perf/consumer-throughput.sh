#!/bin/bash

MY_DIR=`dirname $0`
MY_DIR=`cd $MY_DIR/../; pwd`

. $MY_DIR/conf/env.sh

$KAFKA_HOME/bin/kafka-consumer-perf-test.sh \
	--broker-list kafka-headless.kafka:29092 \
	--messages 8000000 \
	--topic perf-rep2 \
	--threads 1 \
	--timeout 60000


# bash-4.4# ./consumer-throughput.sh
# start.time, end.time, data.consumed.in.MB, MB.sec, data.consumed.in.nMsg, nMsg.sec, rebalance.time.ms, fetch.time.ms, fetch.MB.sec, fetch.nMsg.sec
# 2020-01-10 13:05:23:423, 2020-01-10 13:05:32:499, 762.9656, 84.0641, 8000274, 881475.7602, 3106, 5970, 127.7999, 1340079.3970
