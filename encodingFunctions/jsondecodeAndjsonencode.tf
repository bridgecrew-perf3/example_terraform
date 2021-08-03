// jsonencode 将给定的字符串编码成json格式
// jsondecode 将对应的json解码成字符串

locals {
  jsondecodeValue = jsondecode("{\"hello\": \"world\"}")
  jsonencodeValue = jsonencode({"hello"="world"})
}