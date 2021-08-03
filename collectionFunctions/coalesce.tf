// coalesce 合并接受任意数量的参数并返回第一个不为 null 或空字符串的参数
// coalescelist 合并接受任意数量的list，并返回第一个不为空list的list
// []... 将list中的元素扩展出来变成所需的参数
locals {
  coalesceValue         = coalesce("", "b")
  coalesceValueFromList = coalesce(["a", "b"]...)
  coalescelistValue     = coalescelist(["a", "b"], ["c", "d"])
  coalescelistFromList  = coalescelist([[], ["a", "b", "c"]]...)
}
