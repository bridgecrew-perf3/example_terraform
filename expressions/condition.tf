// condition ? true_val : false_val

variable "conditionvalue" {
  type    = number
  default = 1
}

locals {
  conditionValue = abs(var.conditionvalue) != 1 ? "true" : "false"
}

output "containerValue" {
  value = local.conditionValue
}
