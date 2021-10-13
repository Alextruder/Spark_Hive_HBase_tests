echo 'Start Data injection'
sleep 2s

beeline <<EOF
!connect jdbc:hive2://
CREATE DATABASE company;
CREATE TABLE company.employee (id int, name string, role string) ROW FORMAT DELIMITED FIELDS TERMINATED BY ' ' LINES TERMINATED BY '\n' STORED AS textfile;
LOAD DATA LOCAL INPATH '/user/hive/Spark_Hive_HBase_tests/Test_Scripts/Hive/sample.txt' INTO TABLE employee;
SELECT * FROM company.employee;
EOF

sleep 2s
echo 'End of Data injection'
