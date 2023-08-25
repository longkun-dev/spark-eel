package com.chenxii.sparketl.service

import com.chenxii.sparketl.common.InitSpark

import scala.xml.XML

class BuildClientInfoJob {

  def run(paramMap: Map[String, String]): Unit = {

    val inputStream = this.getClass.getClassLoader.getResourceAsStream("sql/se_client_info.xml")
    val xml = XML.load(inputStream)
    val buildClientInfoSQL = (xml \ "build_se_client_info")
      .map(x => x.text)
      .head

    val sparkSession = InitSpark.init()
    sparkSession.sql(buildClientInfoSQL)

    sparkSession.stop()
  }
}
