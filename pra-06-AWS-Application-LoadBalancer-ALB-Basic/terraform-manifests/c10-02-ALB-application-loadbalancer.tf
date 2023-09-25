# " https://registry.terraform.io/modules/terraform-aws-modules/alb/aws/latest "


module "alb" {
  source  = "terraform-aws-modules/alb/aws"
  version = "~> 8.0"

  name = "${local.name}-app-loadbalancer"

  load_balancer_type = "application"

  vpc_id             = module.vpc.vpc_id
  subnets            = [
    module.vpc.public_subnets[0]
  ]
  security_groups    = [aws_security_group.application_loadbalancer_sg.id]

  # Listeners
  http_tcp_listeners = [
    {
      port               = 80
      protocol           = "HTTP"
      target_group_index = 0  # App1 TG associated to this listener
    }
  ]


  # Target Groups
  target_groups = [
    # App1 Target Group - TG Index = 0
    {
      name_prefix          = "app1-"
      backend_protocol     = "HTTP"
      backend_port         = 80
      target_type          = "instance"
      deregistration_delay = 10
      health_check = {
        enabled             = true
        interval            = 30
        path                = "/app1/index.html"
        port                = "traffic-port"
        healthy_threshold   = 3
        unhealthy_threshold = 3
        timeout             = 6
        protocol            = "HTTP"
        matcher             = "200-399"
      }

      protocol_version = "HTTP1"
      
      # App1 Target Group - Targets
      
      targets = {
        my_app1_vm1 = {
          target_id = module.bastion_server.id[0]
          port      = 80
        }
      tags = local.common_tags  
      }
    }  
  ]
  
  tags = local.common_tags

  
}