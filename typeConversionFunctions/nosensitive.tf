// nonsensitive 将sensitive数据变成可输出的非敏感数据, 注意nonsensitive 只能对sensitive的数据进行操作
variable "mixed_content_json" {
  type      = string
  sensitive = true
}

locals {
  mixed_content      = jsondecode(var.mixed_content_json)
  password_from_json = local.mixed_content["password"]
  username_from_json = nonsensitive(local.mixed_content["username"])
}
