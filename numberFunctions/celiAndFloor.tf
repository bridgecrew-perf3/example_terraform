// ceil 上取整，5.1或者5.9 都返回6
// floor 下取整，5.1或者5.9 都返回5
locals {
  ceilValue  = ceil(5.9)
  floorValue = floor(5.9)
}
