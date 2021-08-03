variable "users" {
  type = map(object({
    is_admin = bool
  }))

  default = {
    "zs" = {
      is_admin = true
    }
  }
}

locals {
  admin_users = {
    for name, user in var.users : name => user
    if user.is_admin
  }
  regular_users = {
    for name, user in var.users : name => user
    if !user.is_admin
  }
}

output "forValue" {
  value = local.admin_users
}
