output "ca_rsa_private_value" {
  value = templatefile("${path.module}/config.yaml.tpl", { ca_rsa_private = "${indent(2, "${tls_private_key.ca.public_key_pem}")}" })
}
