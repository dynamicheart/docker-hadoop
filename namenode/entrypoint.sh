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
$HADOOP_YARN_HOME/sbin/yarn-daemon.sh start timelineserver
bash
