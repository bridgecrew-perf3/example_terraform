variable "exampleType" {
  type = object({
    boolType   = bool,
    stringType = string,
    numberType = number,
    setType    = set(string),
    listType   = list(string),
    tupleType  = tuple([string, number, bool])
    mapType = map(object({
      a = string
      b = string
    }))
    realMap = map(string)
  })
}

locals {
  boolType   = tobool(var.exampleType.boolType)
  stringType = tostring("this is a string")
  numberType = tonumber(10)
  setType    = toset(["a", "b", "c", "c"])
  listType   = tolist(["a", "b", "c", "c"])
  mapType    = tomap({ "a" = 1, "b" = 2 })
}
