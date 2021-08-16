// range 根据start，end 和递增值来创建一个number list, 开始和递增值可以忽略

locals {
  cidr            = "10.0.0.0/16"
  subnets_number  = 10
  private_subnets = chunklist([for i in range(1, local.subnets_number + 1) : cidrsubnet(local.cidr, 8, i)], length(range(1, local.subnets_number + 1)) / 2)[0]
  public_subnets  = chunklist([for i in range(1, local.subnets_number + 1) : cidrsubnet(local.cidr, 8, i)], length(range(1, local.subnets_number + 1)) / 2)[1]
}


output "private_subnets" {
  value = local.private_subnets
}

output "public_subnets" {
  value = local.public_subnets
}
