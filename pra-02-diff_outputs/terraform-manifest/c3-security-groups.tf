# "https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group"
# Security Groups: Resource block 
# Security groups for vpc-ssh 
# aws_security_group.vpc-ssh.id

resource "aws_security_group" "vpc-ssh" {
  name        = "vpc-ssh"
  description = "Allow TLS inbound traffic for SSH"
  # vpc_id      = aws_vpc.main.id

  ingress {
    description      = "TLS from VPC SSH"
    from_port        = 22
    to_port          = 22
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

  tags = {
    Name = "vpc-ssh"
  }
}


# security groups for vpc-web 
# aws_security_group.vpc-web.id


resource "aws_security_group" "vpc-web" {
  name        = "vpc-web"
  description = "Allow TLS inbound traffic for WEB"
  # vpc_id      = aws_vpc.main.id

  ingress {
    description      = "TLS from VPC WEB"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    #ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
  }

  ingress {
    description      = "TLS from VPC WEB"
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

  tags = {
    Name = "vpc-web"
  }
}