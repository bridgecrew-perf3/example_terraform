// 如果list中的所有元素都为真，则返回真

# variable "rules" {
#   type = list(object({
#     name   = string
#     access = string
#   }))

#   validation {
#     condition = alltrue([
#       for o in var.rules : contains(["Allow", "Deny"], o.access)
#     ])
#     error_message = "Error: someone is not true."
#   }
# }

locals {
  alltrueValue = alltrue(["true", "true"])
}

