package com.chenxii.sparketl.utils

/**
 * 脱敏
 */
class ShieldUtil extends Serializable {

  /**
   * 屏蔽证件号码中的字符
   *
   * @param certificateType   证件类型
   * @param certificateNumber 证件号码
   * @return 屏蔽后的证件号码
   */
  def shieldCertificateNumber(certificateType: String, certificateNumber: String): String = {
    if ("居民身份证".equals(certificateType) || "临时居民身份证".equals(certificateType)) {
      // 屏蔽倒数 12 - 3 位
      if (certificateNumber == null || certificateNumber.length < 18) {
        return certificateNumber
      }
      certificateNumber.substring(0, 6) + "**********" + certificateNumber.substring(16)
    } else if ("学生证".equals(certificateType)) {
      if (certificateNumber == null || certificateNumber.length < 3) {
        return certificateNumber
      }
      certificateNumber.substring(0, certificateNumber.length - 1) + "**"
    } else {
      if (certificateNumber.length < 4) {
        return certificateNumber
      }
      "****" + certificateNumber.substring(4)
    }
  }

  /**
   * 屏蔽生日
   *
   * @param birthday 生日日期 yyyy-MM-dd
   * @return 屏蔽月份和日期
   */
  def shieldBirthday(birthday: String): String = {
    if (birthday == null || birthday.length != 10) {
      println("日期格式错误: " + birthday)
      return birthday
    }

    val arr = birthday.split("-")
    if (arr.length != 3) {
      return birthday
    }

    arr(0) + "-" + "**" + "-" + "**"
  }

}
