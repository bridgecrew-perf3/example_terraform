// sha512 encrypt string
// filesha512 encrypt file

locals {
  sha512Value     = sha512("hello")
  filesha512Value = filesha512("${path.module}/bcrypt.tf")
}
