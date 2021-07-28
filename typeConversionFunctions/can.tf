// can 评估表达式返回的结果是否为true
// 一般用在validation 去评估传入的值是否符合需求
locals {
  foo = {
    "bar" = "baz"
  }
}

variable "os" {
  type = string

  validation {
    condition = can(regex("linux|windows",var.os))
    error_message = "ERROR: Operating System must be Windows OR Linux."
  }
}

variable "length" {
  validation {
    condition = var.length > 5
    error_message = "ERROR: The variable is not greater than 5." 
  }
}