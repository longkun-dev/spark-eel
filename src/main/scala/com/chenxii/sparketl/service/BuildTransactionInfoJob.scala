package com.chenxii.sparketl.service

import com.chenxii.sparketl.common.InitSpark

import java.io.FileInputStream
import scala.xml.XML

class BuildTransactionInfoJob {

  def run(): Unit = {

    val xmlFilePath = "src/main/resources/sql/se_transaction_info.xml"
    val xml = XML.load(new FileInputStream(xmlFilePath))

    val dropTransactionInfoPartitionSQL = (xml \ "drop_se_transaction_info_partition")
      .map(x => x.text)
      .head
      .replaceAll("\\$\\{startDate}", "")

    val buildTransactionInfoSQL = (xml \ "build_se_transaction_info")
      .map(x => x.text)
      .head
      .replaceAll("\\$\\{startDate}", "")

    val sparkSession = InitSpark.init()

    // 删除分区
    sparkSession.sql(dropTransactionInfoPartitionSQL)

    // 写入数据
    sparkSession.sql(buildTransactionInfoSQL)

    sparkSession.stop()

  }
}
