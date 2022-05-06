terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region  = var.region
  profile = "default"
}

locals {
  name        = var.name
  image       = var.image
  environment = var.environment
  prefix      = "${var.name}-${var.environment}"
  common_tags = {
    author      = var.author
    environment = var.environment
    division    = var.business_division
    app_name    = var.app_name
  }
}

module "vpc" {
  source = "../modules/network"
  prefix = local.prefix
  tags   = local.common_tags
}

# module "groups" {
#   source = "../modules/groups"
#   prefix = local.prefix
#   tags   = local.common_tags
# }
