#!/bin/bash

MY_DIR=`dirname $0`
MY_DIR=`cd $MY_DIR/../; pwd`

. $MY_DIR/conf/env.sh

PERF_CLIENT_NUM=3

for NO in 1..${PERF_CLIENT_NUM}
do
	kubectl create -n kafka -f . $MY_DIR/kafka-perf.yaml &
done
