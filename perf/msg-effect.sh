#!/bin/bash

MY_DIR=`dirname $0`
MY_DIR=`cd $MY_DIR/../; pwd`

. $MY_DIR/conf/env.sh

for i in 10 100 1000 10000;
do
	echo ""
	echo "Record size: $i"
	$KAFKA_HOME/bin/kafka-producer-perf-test.sh --topic perf-rep2 \
		--num-records 100000 \
		--record-size $i \
		--throughput -1 \
		--producer.config $MY_DIR/conf/producer.properties
done;


# bash-4.4# ./msg-effect.sh

# Record size: 10
# 100000 records sent, 148809.523810 records/sec (1.42 MB/sec), 15.02 ms avg latency, 293.00 ms max latency, 13 ms 50th, 29 ms 95th, 34 ms 99th, 44 ms 99.9th.

# Record size: 100
# 100000 records sent, 131233.595801 records/sec (12.52 MB/sec), 18.98 ms avg latency, 273.00 ms max latency, 13 ms 50th, 52 ms 95th, 63 ms 99th, 65 ms 99.9th.

# Record size: 1000
# 100000 records sent, 31786.395423 records/sec (30.31 MB/sec), 667.25 ms avg latency, 1116.00 ms max latency, 589 ms 50th, 1099 ms 95th, 1112 ms 99th, 1114 ms 99.9th.

# Record size: 10000
# 11878 records sent, 2375.1 records/sec (22.65 MB/sec), 724.8 ms avg latency, 1038.0 ms max latency.
# 14019 records sent, 2803.8 records/sec (26.74 MB/sec), 735.3 ms avg latency, 1292.0 ms max latency.
# 14343 records sent, 2868.0 records/sec (27.35 MB/sec), 715.2 ms avg latency, 1020.0 ms max latency.
# 14796 records sent, 2959.2 records/sec (28.22 MB/sec), 677.4 ms avg latency, 1139.0 ms max latency.
# 14118 records sent, 2821.9 records/sec (26.91 MB/sec), 697.3 ms avg latency, 1388.0 ms max latency.
# 14963 records sent, 2992.0 records/sec (28.53 MB/sec), 704.6 ms avg latency, 1777.0 ms max latency.
# 13815 records sent, 2762.4 records/sec (26.34 MB/sec), 752.7 ms avg latency, 1262.0 ms max latency.
# 100000 records sent, 2746.724531 records/sec (26.19 MB/sec), 722.00 ms avg latency, 1777.00 ms max latency, 742 ms 50th, 1243 ms 95th, 1669 ms 99th, 1760 ms 99.9th.
