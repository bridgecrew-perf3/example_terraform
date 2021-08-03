// sha1 encrypt string
// filesha1 encrypt file

locals {
  sha1Value     = sha1("hello")
  filesha1Value = filesha1("${path.module}/bcrypt.tf")
}
