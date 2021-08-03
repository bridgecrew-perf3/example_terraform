// compact 接受一个list，然后删除list中的空字符串，然后返回一个新的list
locals {
  compactValue = compact(["a","","b","c"])
}