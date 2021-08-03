// 接受一个路径string，然后remove掉最后一部分（类似获取文件目录）
locals {
  dirnameValue1 = dirname("foo/bar/baz.txt")
  dirnameValue  = dirname(abspath("dirname.tf"))
}
