// 编码或者解码，但是这里可以指定编码
locals {
  textencodebase64Value = textencodebase64("Hello, world", "UTF-8")
  textdecodebase64Value = textdecodebase64("SGVsbG8sIHdvcmxk", "UTF-8")
}
