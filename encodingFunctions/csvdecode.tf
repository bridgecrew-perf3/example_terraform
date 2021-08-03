// 对csv格式的字符串进行解码，产生一个包含map的list
locals {
  csvdecodeValue = csvdecode("a,b,c\n1,2,3\n4,5,6")
}
