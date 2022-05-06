data "aws_availability_zones" "name" {
  state = "available"
}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.14.0"

  # VPC Basic Details
  name = var.vpc_name
  cidr = var.vpc_cidr_block
  azs  = data.aws_availability_zones.available.names
}
