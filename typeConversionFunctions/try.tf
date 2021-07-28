// try 依次计算参数的表达式，然后返回第一个不产生任何错误的表达式的内容奥
variable "toStringOrList" {
  type = any
}

locals {
  raw_value = yamldecode(file("${path.module}/example.yaml"))
  normalized_value = {
    name = tostring(try(local.raw_value.name, null))
    // 你看这里依次评估，所以第一个不产生错误的表达是的结果就是name=zhangsan
    groups = try(local.raw_value.name,local.raw_value.groups, [])
  }

  toStringOrList = try(
    [tostring(var.toStringOrList)],
    tolist(var.toStringOrList)
  )
}