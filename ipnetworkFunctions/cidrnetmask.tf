// 根据给出的IP段计算子网掩码

locals {
  cidrnetmaskValue = cidrnetmask("192.168.1.0/20")
}