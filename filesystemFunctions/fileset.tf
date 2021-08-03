// 根据指定的pattern，枚举指定路径下的文件

locals {
  filesetValue = fileset(path.module, "*.tf")
}
