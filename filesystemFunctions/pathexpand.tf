// 解析以~开始的路径，将其解析为当前用户的home目录，如果不以~开头，就直接返回当前指定的路径
locals {
  pathexpandVaule = pathexpand("~/.ssh")
}
