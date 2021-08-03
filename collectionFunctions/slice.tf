// slice 切片,按照指定的start和end index，来对list进行切片

locals {
  sliceValue = slice(["a", "b", "c", "d"], 0, 2)
}
