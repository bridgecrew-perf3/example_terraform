// anytrue 只要list中的元素有true，就返回true，如果为空则返回false

locals {
  anytrueValue = anytrue(["true", "false"]) //return false
}
