// 检测文件是否存在

locals {
  fileexistsValue = fileexists("${path.module}/dirname.tf")
}