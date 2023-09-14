# "https://registry.terraform.io/modules/terraform-aws-modules/security-group/aws/latest"
# Public Security Group
# AWS EC2 Security Group Terraform Module
# Security Group for Public Bastion Host

/*
# module.private_sg

module "private_sg" {
  source = "terraform-aws-modules/security-group/aws"
  version = "5.1.0"
  name        = "private_sg"
  # description = "Security group for web-server with HTTP ports open within VPC"
  description = "Security Group with HTTP & SSH port open for entire VPC Block (IPv4 CIDR), egress ports are all world open"
  vpc_id      = module.vpc.vpc_id
# Providing Ingress Rules & CIDR Blocks 
  ingress_rules            = ["ssh-tcp", "http-80-tcp"]
  ingress_cidr_blocks = [module.vpc.vpc_cidr_block]
# # Egress Rule - all-all open
  egress_rules            = ["all-all"]
  #egress_cidr_blocks = ["10.10.0.0/16"]
  tags = local.common_tags
}

*/


##---------"https://cloudcasts.io/course/terraform/security-groups"--------##
### For testing purpose am taking this link 
# Private Security Group
##

## aws_security_group.private_sg.vpc_id

resource "aws_security_group" "private_sg" {
  name = "private-sg"
  description = "Private internet access"
  vpc_id = module.vpc.vpc_id
  tags = local.common_tags

  /*
  tags = {
    Name        = "cloudcasts-${var.infra_env}-private-sg"
    Role        = "private"
    Project     = "cloudcasts.io"
    Environment = var.infra_env
    ManagedBy   = "terraform"
  }
  */
    ingress {
    description      = "TLS from VPC SSH"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    #ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
  }
    ingress {
    description      = "TLS from VPC HTTP"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    #ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
  }
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    #ipv6_cidr_blocks = ["::/0"]
  }
}



/*

resource "aws_security_group_rule" "private_out" {
  type        = "egress"
  from_port   = 0
  to_port     = 0
  protocol    = "-1"
  cidr_blocks = ["0.0.0.0/0"]
 
  security_group_id = aws_security_group.private.id
}
 
resource "aws_security_group_rule" "private_in" {
  type              = "ingress"
  from_port         = 0
  to_port           = 65535
  protocol          = "-1"
  cidr_blocks = [aws_vpc.vpc.cidr_block]
 
  security_group_id = aws_security_group.private.id
}

*/