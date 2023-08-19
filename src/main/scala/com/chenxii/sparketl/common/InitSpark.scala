package com.chenxii.sparketl.common

import com.chenxii.sparketl.task.BuildClientInfo
import org.apache.spark.sql.SparkSession

object InitSpark {

  /**
   * 初始化 spark session
   */
  def main(array: Array[String]): Unit = {

    val sparkSession = SparkSession.builder()
      .master("yarn")
      .config("hive.metastore.uris", "thrift://xxx:9083")
      .enableHiveSupport()
      .getOrCreate()

    new BuildClientInfo(sparkSession)
  }

}
