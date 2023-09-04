# Terraform Settings Block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      #version = "~> 5.0" # Optional but recommended in production
    }
  }
}

# Provider Block
provider "aws" {
  profile = "default" # AWS Credentials Profile configured on your local desktop terminal  $HOME/.aws/credentials
  region  = "eu-west-3"
}

# Resource Block
resource "aws_instance" "ec2demo" {
  ami           = "ami-04362390cf93a4a65" # Amazon Linux in eu-west-3, update as per your region
  instance_type = "t2.micro"
}