// lower 将给定字符串的所有大写变成小些
// upper 将给定字符串的所有小写变成大写
// title 将给定字符串中每个单词的第一个字母变成大写
locals {
  lowerValue = lower("HELLO")
  upperValue = upper("hello")
  titleValue = title("hello world")
}
