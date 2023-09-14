# "https://developer.hashicorp.com/terraform/tutorials/aws-get-started/aws-variables"

# AWS EC2 Instance Terraform Variables
# EC2 Instance Variables

# AWS EC2 Instance Type
# var.instance_type
variable "instance_type" {
  description       = "EC2 Instance Type"
  type              = string
  default           = "t2.micro"
}

# AWS EC2 Instance Key-Pair
# var.instance_keypair
variable "instance_keypair" {
  description       = "EC2 Instance Keypair"
  type              = string
  default           = "paris-keys"
}

# AWS EC2 Private Instance Count
# var.private_instance_count
variable "private_instance_count" {
  description       = "EC2 private_instance_count"
  type              = number
  default           = 1
}

