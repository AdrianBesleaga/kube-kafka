#!/bin/bash

MY_DIR=`dirname $0`
MY_DIR=`cd $MY_DIR/../; pwd`

. $MY_DIR/conf/env.sh

kubectl create -f . $MY_DIR/kafka-perf.yaml

