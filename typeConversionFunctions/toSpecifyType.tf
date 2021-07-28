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
  stringType = tostring(var.exampleType.stringType)
  numberType = tonumber(var.exampleType.numberType)
  setType    = toset(var.exampleType.setType)
  listType   = tolist(var.exampleType.listType)
  mapType    = tomap(var.exampleType.mapType)
  outall = var.exampleType
}
