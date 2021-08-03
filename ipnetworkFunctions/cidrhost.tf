// 根据给定的hostnumber从IP网段中计算ip地址
locals {
  cidrhostValue = cidrhost("192.168.1.0/24", 24)
}
