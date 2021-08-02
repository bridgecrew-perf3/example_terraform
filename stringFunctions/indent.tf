// indent 给除第一行之外的其他行添加指定数量的空格
locals {
  indentValue = indent(2, "hello\nclguo\nzsguo")
}
