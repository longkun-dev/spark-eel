package com.chenxii.sparketl.service

import com.chenxii.sparketl.utils.ParamUtil

object BuildTransactionInfoService {

  def main(args: Array[String]): Unit = {

    println("====== 调用参数start ======")

    args.foreach(println)

    println("====== 调用参数 end ======")

    if (args.length != 3) {
      println("用法: 请输入开始日期和结束日期(yyyyMMdd)")
      System.exit(0)
    }

    val paramMap = new ParamUtil().getParamMap(args)

    new BuildTransactionInfoJob().run(paramMap)
  }
}
