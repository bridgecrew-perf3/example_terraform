// sha256 encrypt string
// filesha256 encrypt file

locals {
  sha256Value     = sha256("hello")
  filesha256Value = filesha256("${path.module}/bcrypt.tf")
}
