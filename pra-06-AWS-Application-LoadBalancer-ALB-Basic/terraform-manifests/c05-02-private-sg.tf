# " https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group "
# Resource Block: aws_security_group
# ***********Am using this resources for private security groups ************** # 


# aws_security_group.private_sg
resource "aws_security_group" "private_sg" {
  name        = "${local.name}-private-sg"
  description = "Security Group with SSH & HTTP port open for everybody (IPv4 CIDR), egress ports are all world open"
  vpc_id      = module.vpc.vpc_id

  ingress {
    description      = "TLS from VPC for SSH"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    # ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
  }

  ingress {
    description      = "TLS from VPC for HTTP"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    # ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
  }  

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    # ipv6_cidr_blocks = ["::/0"]
  }

  tags = local.common_tags


}

