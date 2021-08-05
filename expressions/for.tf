variable "computers" {
  type = list(map(string))
  default = [
    {
      "id"        = 1
      "interface" = "eth1"
      }, {
      "id"        = 0
      "interface" = "eth0"
    }
  ]
}

variable "users" {
  type = map(object({
    role     = string
    is_admin = bool
  }))
  default = {
    "clguo" = {
      role     = "admin"
      is_admin = true
    }
    "zs" = {
      role     = "projectOwner"
      is_admin = false
    }
    "ls" = {
      role     = "admin"
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

  users_by_role = {
    for name, user in var.users : user.role => name... // 分组模式
  }

  compute_by_splat = var.computers[*].interface // splat 只适用于 lists, sets, and tuples
}

# output "forValue" {
#   value = local.admin_users
# }

# output "usersbyrole" {
#   value = local.users_by_role
# }

output "computeid" {
  value = local.compute_by_splat
}
