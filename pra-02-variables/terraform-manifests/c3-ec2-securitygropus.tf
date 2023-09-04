# Terraform Documentation:  "https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group"
# AWS Security Groups will provide under resource blocks, Block type is Resource and it has two Block lables
# Resource Block type -> Resource label -> Resource local name

# Here we can take an example for : Create security group for SSH Traffic

# aws_security_group.vpc-ssh.id This value we can pass c5 session under vpc security groups, and most important thing we can pass attributes like .id


resource "aws_security_group" "vpc-ssh" {
  name        = "vpc-ssh"
  description = "Allow DEV SSH traffic"
  # vpc_id      = aws_vpc.main.id -> As of now it will take default vpc_id.

  ingress {
    description      = "Allow inboud trafic to our Instance"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"] #Here the square brackets indicates we can pass multiple list of the Items 
    # ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
  }

  egress {
    description = "Allow all ip and ports outbouond"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    # ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "vpc-ssh"
  }
}


# Here we can take an example for : Create security group for WEB Traffic
#aws_security_group.vpc-web.id This value we can pass c5 session under vpc security groups, and most important thing we can pass attributes like .id



resource "aws_security_group" "vpc-web" {
  name        = "vpc-web"
  description = "Allow DEV WEB traffic"
  # vpc_id      = aws_vpc.main.id -> As of now it will take default vpc_id.

  ingress {
    description      = "Allow inboud trafic to our Instance"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    # ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
  }

  ingress {
    description      = "Allow inboud trafic to our Instance"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    # ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
  }

  egress {
    description = "Allow all ip and ports outbouond"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    # ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "vpc-web"
  }
}