// 我们可以用sensitive函数来处理，或者直接在variable中用sensitive = true 来表示输入的是sensitive数据
variable "sensitiveData" {
  type      = string
  sensitive = true
}

locals {
  sensitiveData = sensitive(var.sensitiveData)
}

resource "null_resource" "example" {
  provisioner "local-exec" {
    command = "echo ${local.sensitiveData} >> tmp.txt"
  }
}
