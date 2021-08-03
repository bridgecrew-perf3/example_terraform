// 检测给定的值是不是在list或set中，存在返回true，否则返回false
locals {
  containsValue = contains(["a", "b", "c"], "a")
}
