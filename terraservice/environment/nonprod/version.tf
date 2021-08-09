terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.24.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "1.12.0"
    }
    local = {
      source  = "hashicorp/local"
      version = "1.4.0"
    }
    null = {
      source  = "hashicorp/null"
      version = "2.1.2"
    }
    random = {
      source  = "hashicorp/random"
      version = "2.3.0"
    }
    template = {
      source  = "hashicorp/template"
      version = "2.1.2"
    }
  }
  required_version = ">= 0.13"
}
