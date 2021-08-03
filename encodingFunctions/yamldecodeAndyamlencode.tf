locals {
  yamlencodeValue = yamlencode({ "foo" : [1, 2, 3], "bar" : "baz" })
  yamldecodeValue = yamldecode("{\"hello\": \"world\"}")
}
