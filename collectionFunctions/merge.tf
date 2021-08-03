// merge 合并任意数量的map或object，并返回一个包含所有元素的map或object
// 如果包含相同的key或attribute，则以后面的为主
locals {
  mergeValue = merge({ "a" = "b", "c" = "d" }, { "e" = "f", "c" = "z" })
  mergeDifferentTypeValue = merge({a="b"}, {a=[1,2], c="z"}, {d=3})
}
