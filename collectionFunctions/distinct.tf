// distinct 去重，返回去重后的list

locals {
  distinctValue = distinct(["a", "b", "a", "c", "d", "b"])
}
