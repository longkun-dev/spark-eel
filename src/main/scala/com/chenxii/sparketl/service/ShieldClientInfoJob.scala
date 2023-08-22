package com.chenxii.sparketl.service

import com.chenxii.sparketl.common.InitSpark
import com.chenxii.sparketl.utils.ShieldUtil

import java.io.FileInputStream
import scala.xml.XML

class ShieldClientInfoJob {

  def run(): Unit = {

    val sparkSession = InitSpark.init()
    val shieldUtil = new ShieldUtil()

    // 注册 UDF
    sparkSession.udf.register("shield_certificate_number", shieldUtil.shieldCertificateNumber _)
    sparkSession.udf.register("shield_birthday", shieldUtil.shieldBirthday _)

    val sqlFilePath = "src/main/resources/sql/se_client_info.xml"
    val xml = XML.load(new FileInputStream(sqlFilePath))
    val cacheTable = (xml \ "shield_se_client_info").map(x => x.text).head
    sparkSession.sql(cacheTable)

    sparkSession.stop()
  }
}