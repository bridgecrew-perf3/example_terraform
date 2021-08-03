// 计算指定文件的sha256并且对其进行base64的编码
// 计算指定文件的sha512并且对其进行base64的编码
locals {
  filebase64sha256Value = filebase64sha256("${path.module}/base64sha256And512.tf")
  filebase64sha512Value = filebase64sha512("${path.module}/base64sha256And512.tf")
}