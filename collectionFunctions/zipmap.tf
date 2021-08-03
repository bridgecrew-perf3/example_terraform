// zipmap 从一个keylist和valuelist构造一个map

locals {
  zipmapValue = zipmap(["a", "b"], [1, 2])
}
