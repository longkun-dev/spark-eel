# spark-etl

## 背景

基于 Scala、Spark 和 Spark-sql 的 etl 项目，包含基于 scala 的 Spark-sql 的开发以及 UDF 函数、dolphin-scheduler 的使用。  

## 环境准备

1. 安装 jdk-1.8.0_181
2. 安装 PostgreSQL 15.2
3. 安装 Hadoop-3.2.4
4. 安装 Hive-3.1.2
5. 安装 Sqoop-1.4.7.bin__hadoop-2.6.0
6. 安装 apache-dolphinscheduler-3.1.7
7. 安装 Scala-2.12.15
8. 安装 Spark-3.2.4

## db初始化

1. 初始化 pg 表结构: 执行 db/ddl/init_db.sql
2. 初始化 pg 表数据: 执行 db/dml/init_db.sql
3. 初始化 hive 表结构: 执行 db/ddl/init_db.hql
4. 初始化 hive 表数据: 执行 db/dml/init_db.sql

## 用法
### 打包
```shell
cd ~/spark-etl
mvn clean
mvn package
hadoop fs -mkdir -p /spark/spark-etl/shell
hadoop fs -put src/main/shell/* /spark/spark-etl/shell
hadoop fs -mkdir -p /spark/spark-etl/jar
hadoop fs -put target/spark-etl-1.1.0.jar /spark/spark-etl/jar
```
### 海豚调度配置
根据 build -> shield 顺序配置 dolphin-scheduler 工作流
运行工作流

## 相关问题解决
[博客园-chenxii的博客](https://www.cnblogs.com/chenxii81/)
