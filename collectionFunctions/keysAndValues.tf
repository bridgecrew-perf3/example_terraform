// keys 返回一个list，包含map中的所有key
// values 返回一个list，包含map中的所有value
locals {
  keysValue   = keys({ a = 1, b = 2, c = 3 })
  valuesValue = values({ a = 1, b = 2, c = 3 })
}
