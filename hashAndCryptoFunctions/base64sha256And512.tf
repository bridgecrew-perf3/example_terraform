// 计算指定字符串的sha256并且对其进行base64的编码
// 计算指定字符串的sha512并且对其进行base64的编码
locals {
  base64sha256Value = base64sha256("Hello")
  base64sha512Value = base64sha512("Hello")
}
