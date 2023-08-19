package com.chenxii.sparketl.utils

object ShieldUtilTest {

  def main(args: Array[String]): Unit = {
    val certificateType = "护照"
    val certificateNumber = ""
    val result = new ShieldBirthday().shieldCertificateNumber(certificateType, certificateNumber)
    println("result: " + result)

    println(new ShieldBirthday().shieldBirthday("1995-08-16"))

    val str = "1995-08-16"
    val arr = str.split("-")
    println(arr(1))
  }
}
