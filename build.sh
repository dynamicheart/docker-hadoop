#!/bin/sh
echo -n "" > namenode/slaves
for i in $(seq 1 $1); do
    echo hadoop-slave$i >> namenode/slaves
done
cd base
docker build . -t wuwei:hadoop-base
cd -
cd namenode
docker build . -t wuwei:hadoop-namenode
cd -
cd datanode
docker build . -t wuwei:hadoop-datanode
cd -

