// range 根据start，end 和递增值来创建一个number list, 开始和递增值可以忽略

locals {
  rangeValue = range(0, 10, 1)
}
