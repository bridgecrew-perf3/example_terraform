// transpose 接受一个value为list的map，然后交换key和value，产生一个新的map

locals {
  transposeValue = transpose({ "a" = [1, 2], "b" = [4, 3] })
}
