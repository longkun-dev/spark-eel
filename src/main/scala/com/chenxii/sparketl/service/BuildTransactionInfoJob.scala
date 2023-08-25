package com.chenxii.sparketl.service

import com.chenxii.sparketl.common.InitSpark

import scala.xml.XML

class BuildTransactionInfoJob {

  def run(paramMap: Map[String, String]): Unit = {

    val inputStream = this.getClass.getClassLoader.getResourceAsStream("sql/se_transaction_info.xml")
    val xml = XML.load(inputStream)

    val dropTransactionInfoPartitionSQL = (xml \ "drop_se_transaction_info_partition_step1")
      .map(x => x.text)
      .head
      .replaceAll("\\$\\{startDate}", paramMap.getOrElse("start_date", "20230801"))
      .replaceAll("\\$\\{endDate}", paramMap.getOrElse("end_date", "20230901"))

    val buildTransactionInfoSQL = (xml \ "build_se_transaction_info")
      .map(x => x.text)
      .head
      .replaceAll("\\$\\{startDate}", paramMap.getOrElse("start_date", "20230801"))
      .replaceAll("\\$\\{endDate}", paramMap.getOrElse("end_date", "20230901"))

    val sparkSession = InitSpark.init()

    sparkSession.sql("set hive.exec.dynamic.partition=true;")
    sparkSession.sql("set hive.exec.dynamic.partition.mode=nonstrict;")

    // 删除分区
    sparkSession.sql(dropTransactionInfoPartitionSQL)

    // 写入数据
    sparkSession.sql(buildTransactionInfoSQL)

    sparkSession.stop()

  }
}
