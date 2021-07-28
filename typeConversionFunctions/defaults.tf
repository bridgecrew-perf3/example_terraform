// defaults 通过optional来为值传递默认值
terraform {
  experiments = [module_variable_optional_attrs]
}

variable "storage" {
  type = map(object({
    name = string
    enabled = optional(bool)
    website = object({
      index_document = optional(string)
      error_document = optional(string)
    })
    documents = map(
      object({
        source_file = string
        content_type = optional(string)
      })
    )
  }))
}


locals {
  storage = defaults(var.storage, {
    enabled = true
    website = {
      index_document = "index.html"
      error_document = "error.html"
    }
    documents = {
      content_type = "application/octet-stream"
    }
  })
}

