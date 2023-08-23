package com.chenxii.sparketl.service

import java.io.FileInputStream
import scala.xml.XML

object BuildClientInfoTest {

  def main(args: Array[String]): Unit = {
    //  val filePath = "sql/se_client_info.xml"
//    val inputStream = getClass.getResourceAsStream("se_client_info.xml")
    val inputStream = Thread.currentThread.getContextClassLoader.getResource("sql/se_client_info.xml").getPath
    val xml = XML.load(new FileInputStream(inputStream))
    val cacheTable = (xml \ "build_se_client_info").map(x => x.text).head
    println(cacheTable)
  }
}
