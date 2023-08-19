package com.chenxii.sparketl.task

import java.io.FileInputStream
import scala.xml.XML

object BuildClientInfoTest {

  def main(args: Array[String]): Unit = {
    val filePath = "src/main/resources/sql/se_client_info.xml"
    val xml = XML.load(new FileInputStream(filePath))
    val cacheTable = (xml \ "build_se_client_info").map(x => x.text).head
    println(cacheTable)
  }
}
