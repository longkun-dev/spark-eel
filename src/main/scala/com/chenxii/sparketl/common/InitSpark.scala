package com.chenxii.sparketl.common

import org.apache.spark.sql.SparkSession

object InitSpark {

  /**
   * 初始化 spark session
   */
  def init(): SparkSession = {

    val sparkSession: SparkSession = SparkSession.builder()
      .master("yarn")
      .config("hive.metastore.uris", "thrift://192.168.31.66:9083")
      .enableHiveSupport()
      .getOrCreate()

    sparkSession
  }

}
