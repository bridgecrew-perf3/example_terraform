// 使用blowfish 加密指定的字符串
locals {
  bcryptValue = bcrypt("hello",1)
}