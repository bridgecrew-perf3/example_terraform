storage = {
  storage1 = {
    name = "example"

    website = {
      error_document = "error.txt"
    }
    documents = {
      "index.html" = {
        source_file  = "index.html.tmpl"
        content_type = "text/html"
      }
      "error.txt" = {
        source_file  = "error.txt.tmpl"
        content_type = "text/plain"
      }
      "terraform.exe" = {
        source_file  = "terraform.exe"
      }
    }
  }
}

os = "linux"
length = 6
toStringOrList = ["string1","string2",12]

mixed_content_json = "{\"username\": \"zqb\",\"password\": \"p4ssw0rd\"}"
sensitiveData = "This is an sensitive string"

exampleType = {
  boolType = false
  listType = [ "a","b","c" ]
  mapType = {
    "anykey" = {
      a = "value"
      b = "value"
    }
  }
  numberType = 1
  setType = [ "value" ]
  stringType = "value"
  tupleType = ["value",12,true]
  realMap = {
    key1 = "value1"
    key2 = 12
  }
}