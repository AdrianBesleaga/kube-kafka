#!/bin/bash

MY_DIR=`dirname $0`
MY_DIR=`cd $MY_DIR/../; pwd`

. $MY_DIR/conf/env.sh

# Setup
$KAFKA_HOME/bin/kafka-topics.sh --zookeeper $ZK --create --topic perf-rep1 --partitions $NUM_PARTITION --replication-factor 1
$KAFKA_HOME/bin/kafka-topics.sh --zookeeper $ZK --create --topic perf-rep2 --partitions $NUM_PARTITION --replication-factor 2

