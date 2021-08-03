// matchkeys 通过识别keyslist中的元素，找出和searchset相同的元素的index，然后通过这个index找出valueslist中的对应元素
locals {
  // matchkeys(valueslist, keyslist, searchset)
  matchkeysValue = matchkeys(["a","b","c"],["1","2","2"],["2"])
}