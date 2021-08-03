// 相对于cidrsubnet更复杂，计算出一系列的IP段，这里的newbit始终是2，但是netnum从0递增到3

locals {
  cidrsubnetsValue = cidrsubnets("10.0.0.0/16", 2, 2, 2, 2)
}
