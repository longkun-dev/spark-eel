package com.chenxii.sparketl.service

import com.chenxii.sparketl.common.InitSpark

import java.io.FileInputStream
import scala.xml.XML

class BuildClientInfoJob {

  def run(paramMap: Map[String, String]): Unit = {

    // val sqlFilePath = "sql/se_client_info.xml"
    val sqlFilePath = Thread.currentThread.getContextClassLoader
      .getResource("sql/se_client_info.xml").getPath

    val xml = XML.load(new FileInputStream(sqlFilePath))
    val buildClientInfoSQL = (xml \ "build_se_client_info")
      .map(x => x.text)
      .head

    val sparkSession = InitSpark.init()
    sparkSession.sql(buildClientInfoSQL)

    sparkSession.stop()
  }
}
