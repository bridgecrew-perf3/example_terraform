// 将字符串转换成对应进制的数字
locals {
  parseIntValue   = parseint("100", 2)  //4
  parseIntValue10 = parseint("100", 10) // 100
}
