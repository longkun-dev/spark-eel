package com.chenxii.sparketl.task

import org.apache.spark.sql.SparkSession

import java.io.FileInputStream
import scala.xml.XML

/**
 * build
 */
class BuildClientInfo(sparkSession: SparkSession) {

  def BuildClientInfo(): Unit = {
    val sqlFilePath = "src/main/resources/sql/se_client_info.xml"
    val xml = XML.load(new FileInputStream(sqlFilePath))
    val cacheTable = (xml \ "build_se_client_info").map(x => x.text).head
    sparkSession.sql(cacheTable)

    sparkSession.stop()
  }

}
