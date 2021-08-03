// md5 encrypt string
// filemd5 encrypt file


locals {
  md5Value     = md5("hello")
  filemd5Value = filemd5("${path.module}/bcrypt.tf")
}
