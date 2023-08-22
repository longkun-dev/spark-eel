package com.chenxii.sparketl.service

import com.chenxii.sparketl.common.InitSpark

import java.io.FileInputStream
import scala.xml.XML

class BuildClientInfoJob {

  def run(): Unit = {
    val sqlFilePath = "src/main/resources/sql/se_client_info.xml"
    val xml = XML.load(new FileInputStream(sqlFilePath))
    val buildClientInfoSQL = (xml \ "build_se_client_info").map(x => x.text).head

    val sparkSession = InitSpark.init()
    sparkSession.sql(buildClientInfoSQL)

    sparkSession.stop()
  }
}
