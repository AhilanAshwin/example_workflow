terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region  = "ap-southeast-1"
  profile = "default"
}

locals {
  name        = "fastapi-app"
  image       = "ahilanashwin/fastapi"
  environment = var.environment
  common_tags = {
    author      = var.author
    environment = var.environment
    division    = var.business_divsion
    app_name    = local.name
  }
}
