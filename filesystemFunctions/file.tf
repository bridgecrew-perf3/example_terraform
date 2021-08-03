// 读取文件内容

locals {
  fileValue = file("${path.module}/dirname.tf")
}