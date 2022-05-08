module "alb" {
  source             = "terraform-aws-modules/alb/aws"
  version            = "6.10.0"
  name               = "${local.prefix}-alb"
  load_balancer_type = "application"
  vpc_id             = module.vpc.vpc_id
  subnets            = module.vpc.public_subnets
  #   Security group for the application load balancer
  security_groups = [module.alb-security-group.security_group_id]
  # Listeners
  http_tcp_listeners = [
    {
      port               = 80
      protocal           = "HTTP"
      target_group_index = 0
    }
  ]

}
