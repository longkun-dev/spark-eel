package com.chenxii.sparketl.service

import java.io.FileInputStream
import scala.xml.XML

object ParamTest {

  def main(args: Array[String]): Unit = {
    val params = Array[String]("start_date=20230801", "end_date=20230901")
    for (elem <- params) {
      val paramItem = elem.split("=")
      println("key: " + paramItem(0))
      println("val: " + paramItem(1))
    }

    val paramMap: Map[String, String] = Map(("start_date", "20230801"))
    val value = paramMap.getOrElse("start_date", "null value")
    println("value: " + value)

    val sqlFilePath = "src/main/resources/sql/se_client_info.xml"
    val xml = XML.load(new FileInputStream(sqlFilePath))
    val buildClientInfoSQL = (xml \ "build_se_client_info")
      .map(x => x.text)
      .head
    println(buildClientInfoSQL)
  }

}
