terraform {
  required_version = ">= 1.2.5"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.22.0"
    }
    
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.14.0"
    }

    http = {
      source  = "hashicorp/http"
      version = "2.2.0"
    }
  }
}