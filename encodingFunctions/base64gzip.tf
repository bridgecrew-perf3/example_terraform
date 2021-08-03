// 使用 gzip 压缩字符串，然后以 Base64 编码对结果进行编码
locals {
  base64gzipValue = base64gzip("hello world")
}
