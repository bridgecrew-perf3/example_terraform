// setproduct 返回给出set的所有可能的集合

locals {
  setproductValue = setproduct(["a","b","c"],["x","y"],["m","n"])
}