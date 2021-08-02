// 取绝对值
variable "abs" {
  type = number
}

locals {
  absResult = abs(var.abs)
}
