// 移除文件路径除了最后一部分的其他所有部分（类似获取文件名）
locals {
  basenameValue = basename(abspath("basename.tf"))
}