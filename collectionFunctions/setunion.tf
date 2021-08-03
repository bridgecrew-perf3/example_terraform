// setunion 返回多个set的并集

locals {
  setunionValue = setunion(["a","b","c"],["a","c"],["x"])
}