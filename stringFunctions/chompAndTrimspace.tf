// chomp 删除字符串末尾的换行符
// trimspace 删除所有的空格（空格包含常规空格，制表符，换行符以及其他类似空格的符号）
locals {
  chompValue = chomp("hello\n\n")
  trimspaceValue = trimspace(" hello\n\n")
}