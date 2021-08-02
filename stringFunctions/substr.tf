// substr 按偏移量和长度从给定字符串中提取子字符串
locals {
  substrValue = substr("hello world", 2, 5)
}
