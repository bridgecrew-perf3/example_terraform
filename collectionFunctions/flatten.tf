
// flatten 展开列表中的元素
variable "iam-user-policy-map" {
  type = map(list(string))
  default = {
    "user1" = ["policy1", "policy2"],
    "user2" = ["policy1"]
  }
}


locals {

  association-list = flatten([
    for user in keys(var.iam-user-policy-map) : [
      for policy in var.iam-user-policy-map[user] : {
        user   = user
        policy = policy
      }
    ]
  ])

  flattenValue = flatten([["a", "b"], ["d"], ["c"]])
  a = concat([["a", "b"], ["d"], ["c"]]...)
}
