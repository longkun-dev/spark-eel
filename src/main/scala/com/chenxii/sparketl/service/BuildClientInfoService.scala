package com.chenxii.sparketl.service

object BuildClientInfoService {

  def main(args: Array[String]): Unit = {

    if (args.length != 2) {
      println("用法: 请输入开始日期和结束日期(yyyyMMdd)")
      System.exit(0)
    }

    val paramsMap = Map()
    paramsMap += ("startDate", args(0))
    paramsMap += ("endDate", args(0))

    new BuildClientInfoJob().run()
  }
}
