// concat 合并俩个或多个list到一个list中

locals {
  concatValue = concat(["a", ""], ["b", "", "c"])
}
