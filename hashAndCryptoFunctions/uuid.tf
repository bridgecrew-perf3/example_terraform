// 生成随机的uuid，每次都不一样，所以我们一般不建议在resource中使用，不过可以在ignore_changes中使用
locals {
  uuidValue = uuid()
}
