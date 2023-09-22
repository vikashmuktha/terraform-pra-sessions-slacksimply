# "  https://registry.terraform.io/modules/terraform-aws-modules/elb/aws/latest "
#

module "elb" {
  source  = "terraform-aws-modules/elb/aws"
  version = "~> 2.0"

  name = "${local.name}-elb"

  subnets         = [
    module.public_subnets[0],
    module.public_subnets[1]
  ]
  security_groups = ["module.elb_sg.server.id"]
  internal        = false

  listener = [
    {
      instance_port     = 80
      instance_protocol = "http"
      lb_port           = 80
      lb_protocol       = "http"
    },
    {
      instance_port     = 80
      instance_protocol = "http"
      lb_port           = 81
      lb_protocol       = "http"
      # ssl_certificate_id = "arn:aws:acm:eu-west-1:235367859451:certificate/6c270328-2cd5-4b2d-8dfd-ae8d0004ad31"
    },
  ]

  health_check = {
    target              = "HTTP:80/"
    interval            = 30
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 5
  }

  // ELB attachments
  number_of_instances = var.private_instance_count
  instances           = [
    module.vm_server[0]
  ]

  tags = local.common_tags
}