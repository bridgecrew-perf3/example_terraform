// 解密用rsa加密的内容
locals {
  rsadecryptValue = rsadecrypt(filebase64("${path.module}/data_en.txt"), file("${path.module}/terraform.pem"))
}
