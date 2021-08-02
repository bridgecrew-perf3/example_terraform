// regex 将正则表达式应用于指定的字符串，并返回匹配到的第一个结果
// regexall 将正则表达式应用于指定的字符串，以list的形式返回所有匹配的所有结果
// replace 在字符串中搜索指定的字符串，然后替换成指定的指定的另一个字符串
// 如果是普通捕获组，regex的结果是和捕获组相同顺序的字符串，regexall的结果是返回一个list，其中元素是list
// 如果命名捕获组，regex结果是捕获的字符串的映射，使用捕获组名为key，regexall的结果是返回一个list，其中元素是map
// [^:/?#] #表示页面锚点id的起始
locals {
  regexValue    = regex("[a-z]+", "53453453.34abc5345aaabbbccc23454")
  regexAllValue = regexall("[a-z]+", "53453453.34abc5345aaabbbccc23454")

  regexAllUnameValue = regexall("(\\d\\d\\d\\d)-(\\d\\d)-(\\d\\d)", "2019-02-01")
  regexUnameValue    = regex("(\\d\\d\\d\\d)-(\\d\\d)-(\\d\\d)", "2019-02-01")

  regexallNameValue = regexall("^(?:(?P<scheme>[^:/?#]+):)?(?://(?P<authority>[^/?#]*))?", "https://terraform.io/docs/")
  regexNameValue    = regex("^(?:(?P<scheme>[^:/?#]+):)?(?://(?P<authority>[^/?#]*))?", "https://terraform.io/docs/")

  replaceValue = replace("1+2+3","+","-")
}
