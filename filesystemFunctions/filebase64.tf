// 读取文件内容，然后进行base64编码


locals {
  filebase4Value = filebase64("${path.module}/file.tf")
}