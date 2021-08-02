// trim 从给定字符串的开头和结尾删除指定的字符串
// trimprefix 从字符串的开头删除指定的字符串
// trimsuffix 从字符串的结尾删除指定的字符串
// trimspace 从给定字符串的开头和结尾删除空格
locals {
  trimValue = trim("?!hello?!", "!?")
  trimprefixValue = trimprefix("helloworld", "hello")
  trimsuffixValue = trimsuffix("helloworld", "world")
  trimspaceValue = trimspace("  hello\n\n")
}