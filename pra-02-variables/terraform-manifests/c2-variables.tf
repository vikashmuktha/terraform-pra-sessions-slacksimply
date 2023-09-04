# For variables terraform documentation we can refer: "https://developer.hashicorp.com/terraform/language/values/variables"
# Providing the Terraform Variables, so here Block type is Variable with single block label 

# AWS Region
variable "aws_region" {
  description = "Region in which AWS region will created"
  type = string
  default = "eu-west-3"

}

# AWS EC2 Instance Type
variable "instance_type" {
  description = "AWS EC2 Instance Type"
  type = string
  default = "t2.micro"
}

# AWS Instance Key Pair
variable "instance_keypair" {
  description = "AWS EC2 Instance Key Pair"
  type = string
  default = "paris-keys"
}