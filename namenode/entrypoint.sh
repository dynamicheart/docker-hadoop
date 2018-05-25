#!/bin/sh
echo 'Starting sshd...'
service ssh start
echo 'Starting dfs...'
/usr/local/hadoop/sbin/start-dfs.sh
echo 'Starting yarn...'
/usr/local/hadoop/sbin/start-yarn.sh
export HADOOP_CONF_DIR=$HADOOP_HOME/etc/hadoop
bash
