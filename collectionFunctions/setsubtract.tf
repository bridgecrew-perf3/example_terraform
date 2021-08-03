// setsubtract 返回包含在第一个set中，但是不包好在第二个set中的元素

locals {
  setsubtractValue = setsubtract(["a", "b", "c"], ["x", "y", "a"])
}
