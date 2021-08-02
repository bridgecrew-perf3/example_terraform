// formatdate 将时间戳转换成其他格式
// format 类似其他语言中的printf，用来格式化指定的值
// formatlist 根据指定的字符串来生成字符串list
locals {
  formatValue     = format("hello, %s", "Clguo")
  formatDateValue = formatdate("H 'o''clock'", "2018-01-02T23:12:01-08:00")
  formatListValue = formatlist("%s, %s!", "Salutations", ["Valentina", "Ander", "Olivia", "Sam"])
}
