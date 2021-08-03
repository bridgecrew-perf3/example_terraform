// chunklist 将一个list拆分成包含指定数量元素的若干list，最终返回一个包含这些list的list
locals {
  chunklistValue = chunklist(["a", "b", "c", "d", "e", "e"], 2)
}
