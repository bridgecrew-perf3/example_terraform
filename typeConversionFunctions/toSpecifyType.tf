// 无序数据类型(maps, objects, sets)
// 有序数据类型(lists, tuples)
variable "exampleType" {
  type = object({
    boolType   = bool,
    stringType = string,
    numberType = number,
    setType    = set(number),
    listType   = list(string),
    tupleType  = tuple([string, number, bool])
    objectType = object({
      a = string
      b = string
    })
    mapType = map(object({
      a = string
      b = string
    }))
    realMap = map(string)
  })

  default = {
    boolType = false
    listType = ["list1", "list2"]
    mapType = {
      "key" = {
        a = "mj1"
        b = "mj2"
      }
    }
    numberType = 1
    objectType = {
      a = "object1"
      b = "object2"
    }
    realMap = {
      "key" = "map1"
    }
    setType    = [1, 2, 3]
    stringType = "string"
    tupleType = [
    "tupstring", 1, false]
  }
}


locals {
  boolType   = tobool(var.exampleType.boolType)
  stringType = tostring(var.exampleType.stringType)
  numberType = tonumber(var.exampleType.numberType)
  setType    = toset(var.exampleType.setType)
  listType   = tolist(var.exampleType.listType)
  mapType    = tomap(var.exampleType.mapType)
  outall     = var.exampleType


}


