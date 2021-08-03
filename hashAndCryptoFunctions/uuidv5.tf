// uuidv5 可以根据namespace和name来生成uuid，和uuid不同的是，只要namespace和name不变，uuid值也不会变

locals {
  uuidv5Value = uuidv5("dns", "www.terraform.io")
}
