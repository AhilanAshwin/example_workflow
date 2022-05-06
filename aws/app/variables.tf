variable "name" {
  description = "Unique identifier name used as prefix for all resources used under this project"
  type        = string
}

variable "app_name" {
  description = "Name of the project"
  type        = string
}

variable "region" {
  description = "Region in which AWS resources is created"
  type        = string
  default     = "ap-southeast-1"
}

variable "image" {
  description = "Docker image used for the ECS cluster"
  type        = string
}

variable "environment" {
  description = "Environment variable used as prefix"
  type        = string
}

variable "author" {
  description = "Name of the author for this project"
  type        = string
}

variable "business_division" {
  description = "Name of the business division within the company"
  type        = string
}
