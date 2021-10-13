val sqlContext = new org.apache.spark.sql.hive.HiveContext(sc)
sqlContext.sql("CREATE DATABASE IF NOT EXISTS company")
sqlContext.sql("CREATE TABLE IF NOT EXISTS company.new_employee (id int, name string) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n'")
sqlContext.sql("LOAD DATA LOCAL INPATH '/home/spark/Spark_Hive_HBase_tests/Test_Scripts/Spark/sample.txt' INTO TABLE company.new_employee")
sqlContext.sql("SELECT * FROM company.new_employee WHERE id < 5").collect().foreach(println)

:q
