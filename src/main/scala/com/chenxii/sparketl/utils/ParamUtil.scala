package com.chenxii.sparketl.utils

class ParamUtil {

  def getParamMap(args: Array[String]): Map[String, String] = {

    var paramMap = Map[String, String]()

    for (elem <- args) {
      if (!elem.contains("=")) {
        println("无效参数: " + elem)
      } else {
        val param = elem.split("=")
        println("param1-key: " + param(0))
        println("param1-val: " + param(1))
        println("======")
        paramMap += (param(0) -> param(1))
      }
    }

    paramMap
  }
}
