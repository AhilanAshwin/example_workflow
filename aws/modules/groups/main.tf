module "ecs_security-group" {
  source      = "terraform-aws-modules/security-group/aws"
  version     = "4.9.0"
  description = "Security group with HTTP & SSH port open for entire VPC block (IPv4 CIDR), egress ports are all world open"
  vpc_id      = module.vpc.vpc_id
  name        = var.ecs_group_name
}
