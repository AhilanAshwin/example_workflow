# VPC Input Variables

# VPC Name
variable "prefix" {
  description = "The prefix to be added to the vpc resource"
  type        = string
}

variable "tags" {
  description = "tags associated with the vpc"
  type        = map(string)
}

# VPC CIDR Block
variable "vpc_cidr_block" {
  description = "VPC CIDR Block"
  type        = string
  default     = "10.0.0.0/16"
}

# VPC Public Subnets
variable "vpc_public_subnets" {
  description = "VPC Public Subnets"
  type        = list(string)
  default     = ["10.0.101.0/24", "10.0.102.0/24"]
}

# VPC Private Subnets
variable "vpc_private_subnets" {
  description = "VPC Private Subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

# # VPC Database Subnets
# variable "vpc_database_subnets" {
#   description = "VPC Database Subnets"
#   type        = list(string)
#   default     = ["10.0.151.0/24", "10.0.152.0/24"]
# }

# # VPC Create Database Subnet Group (True / False)
# variable "vpc_create_database_subnet_group" {
#   description = "VPC Create Database Subnet Group"
#   type        = bool
#   default     = true
# }

# # VPC Create Database Subnet Route Table (True or False)
# variable "vpc_create_database_subnet_route_table" {
#   description = "VPC Create Database Subnet Route Table"
#   type        = bool
#   default     = true
# }

# VPC Enable NAT Gateway (True or False) 
variable "vpc_enable_nat_gateway" {
  description = "Enable NAT Gateways for Private Subnets Outbound Communication"
  type        = bool
  default     = false
}

# VPC Single NAT Gateway (True or False)
variable "vpc_single_nat_gateway" {
  description = "Enable only single NAT Gateway in one Availability Zone to save costs during our demos"
  type        = bool
  default     = true
}






