#!/bin/bash
#$1:sqlFile
path=/home/aisinobi/lib
#/home/aisinobi/spark-1.6.2-bin-hadoop2.6/bin/spark-sql --master yarn --deploy-mode client --driver-memory 4G --executor-memory 4G --num-executors 16 --executor-cores 4 --jars ${path}/elasticsearch-hadoop-2.3.4.jar,${path}/ojdbc14.jar,${path}/mysql-connector-java-5.1.38-bin.jar,${path}/hbase-client-0.98.17-hadoop2.jar,${path}/hbase-common-0.98.17-hadoop2.jar,${path}/hbase-protocol-0.98.17-hadoop2.jar,${path}/hbase-server-0.98.17-hadoop2.jar,${path}/hive-hbase-handler-1.2.1.jar,${path}/guava-12.0.1.jar,${path}/protobuf-java-2.5.0.jar,${path}/htrace-core-2.04.jar,${path}/zookeeper-3.4.6.jar,${path}/spark-streaming-kafka-assembly_2.10-1.3.1.jar,${path}/IKAnalyzer2012_u6.jar $1

/home/aisinobi/spark-1.6.2-bin-hadoop2.6/bin/spark-sql --master yarn --deploy-mode client --driver-memory 4G --executor-memory 4G --num-executors 16 --executor-cores 4 --jars ${path}/elasticsearch-hadoop-2.3.4.jar,${path}/ojdbc14.jar,${path}/mysql-connector-java-5.1.38-bin.jar,${path}/hbase-client-0.98.17-hadoop2.jar,${path}/hbase-common-0.98.17-hadoop2.jar,${path}/hbase-protocol-0.98.17-hadoop2.jar,${path}/hbase-server-0.98.17-hadoop2.jar,${path}/hive-hbase-handler-1.2.1.jar,${path}/guava-12.0.1.jar,${path}/protobuf-java-2.5.0.jar,${path}/htrace-core-2.04.jar,${path}/zookeeper-3.4.6.jar,${path}/spark-streaming-kafka-assembly_2.10-1.3.1.jar,${path}/IKAnalyzer2012_u6.jar $1
# spark-sql --jars ${path}/ojdbc14.jar,${path}/mysql-connector-java-5.1.38-bin.jar,${path}/hbase-client-0.98.17-hadoop2.jar,${path}/hbase-common-0.98.17-hadoop2.jar,${path}/hbase-protocol-0.98.17-hadoop2.jar,${path}/hbase-server-0.98.17-hadoop2.jar,${path}/hive-hbase-handler-1.2.1.jar,${path}/guava-12.0.1.jar,${path}/protobuf-java-2.5.0.jar,${path}/htrace-core-2.04.jar,${path}/zookeeper-3.4.6.jar,${path}/spark-streaming-kafka-assembly_2.10-1.3.1.jar,${path}/IKAnalyzer2012_u6.jar
