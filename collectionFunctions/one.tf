// one 接受包含0个或者1个元素的list，tuple， set作为参数
// 如果collection为空，则返回null，如果有一个元素，则返回该元素

locals {
  oneValue = one([1])
}
