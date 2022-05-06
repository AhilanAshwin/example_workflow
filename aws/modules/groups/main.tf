module "security-group" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.9.0"
  vpc_id  = module.vpc.vpc_id

}
