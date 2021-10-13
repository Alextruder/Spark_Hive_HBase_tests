echo 'Start data injection in Hive'
sleep 2s
beeline -u jdbc:hive2:// -f /user/hive/Spark_Hive_HBase_tests/Test_Scripts/Hive/Load_Local_Data/load_local
sleep 2s
echo 'End of data injection in Hive'
