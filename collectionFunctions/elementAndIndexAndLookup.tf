// element 从list中检索对应index的元素
// index 返回list中指定元素的index
// lookup 查询map中给定key的value，如果指定的key存在，返回value，如果不存在，返回默认值
locals {
  elementValue = element(["a", "b", "c"], 1)
  indexValue   = index(["a", "b", "c"], "a")
  lookupValue  = lookup({ a = "any", b = "bee" }, "a", "what?")
}
