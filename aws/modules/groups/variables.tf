# Security group prefix
variable "prefix" {
  description = "The prefix to be added to the vpc resource"
  type        = string
}

# Security group associated tags
variable "tags" {
  description = "tags associated with the vpc"
  type        = map(string)
}
