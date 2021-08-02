// join将给定的list中的元素用给定的分隔符连接起来产生一个新的字符串
// split 用指定的分隔符将字符串切分产生一个新的list
locals {
  joinValue  = join("-", ["a", "b", "c"])
  splitValue = split("-", "a-b-c")
}
