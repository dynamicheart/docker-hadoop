#!/bin/sh
export HADOOP_PREFIX=/usr/local/hadoop
echo 'Starting sshd...'
service ssh start
echo 'Starting dfs...'
$HADOOP_PREFIX/sbin/start-dfs.sh
echo 'Starting yarn...'
$HADOOP_PREFIX/sbin/start-yarn.sh
echo 'Starting history server...'
$HADOOP_PREFIX/sbin/mr-jobhistory-daemon.sh start historyserver
$HADOOP_PREFIX/sbin/yarn-daemon.sh start timelineserver
hadoop --config /usr/local/hadoop/etc/hadoop jar /usr/local/hadoop/share/hadoop/mapreduce/hadoop-mapreduce-examples-2.9.0.jar bbp 1 10000 100 /bbp
bash
