echo 'Start Data injection'
sleep 2s

beeline -u jdbc:hive2:// <<EOF
CREATE DATABASE company;
CREATE TABLE company.employee (id int, name string, role string) ROW FORMAT DELIMITED FIELDS TERMINATED BY ' ' LINES TERMINATED BY '\n' STORED AS textfile;
LOAD DATA LOCAL INPATH '/home/data/Movies-Analytics/Test_Scripts/Hive/sample.txt' INTO TABLE company.employee;
SELECT * FROM company.employee;
EOF

sleep 2s
echo 'End of Data injection'
