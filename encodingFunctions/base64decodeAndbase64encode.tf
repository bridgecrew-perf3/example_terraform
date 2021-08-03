// base64decode 解码
// base64encode 编码

locals {
  base64decodeValue = base64decode("SGVsbG8gV29ybGQ=")
  base64encodeValue = base64encode("Hello World")
}