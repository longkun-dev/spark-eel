package com.chenxii.sparketl.service

import com.chenxii.sparketl.common.InitSpark
import com.chenxii.sparketl.utils.ShieldUtil

import scala.xml.XML

class ShieldClientInfoJob {

  def run(paramMap: Map[String, String]): Unit = {

    val sparkSession = InitSpark.init()
    val shieldUtil = new ShieldUtil()

    // 注册 UDF
    sparkSession.udf.register("shield_certificate_number", shieldUtil.shieldCertificateNumber _)
    sparkSession.udf.register("shield_birthday", shieldUtil.shieldBirthday _)

    val inputStream = this.getClass.getClassLoader.getResourceAsStream("sql/se_client_info.xml")
    val xml = XML.load(inputStream)

    val shieldClientInfoSQL = (xml \ "shield_se_client_info")
      .map(x => x.text)
      .head
      .replaceAll("\\$\\{startDate}", paramMap.getOrElse("start_date", "20230801"))
      .replaceAll("\\$\\{endDate}", paramMap.getOrElse("end_date", "20230901"))

    sparkSession.sql(shieldClientInfoSQL)

    sparkSession.stop()
  }
}
