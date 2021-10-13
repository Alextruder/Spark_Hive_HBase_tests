echo 'Start Test Hadoop'

sleep 2s

hdfs dfs -mkdir /user/hadoop/hadoop_logs
hdfs dfs -put $HADOOP_HOME/logs/*.log /user/hadoop/hadoop_logs
echo ''
echo 'Hadoop logs are:'
hdfs dfs -ls /user/hadoop/hadoop_logs

echo ''
echo ''

echo 'Content of the first log'
hdfs dfs -cat /user/hadoop/hadoop_logs/hadoop-root-namenode-*.log

sleep 2s
echo ''
echo ''
echo 'End of Test Hadoop'
