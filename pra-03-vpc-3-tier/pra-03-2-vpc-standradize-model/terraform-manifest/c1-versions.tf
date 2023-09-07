# Terraform Configurations

terraform {
  required_version = " ~> 1.5 "
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = " ~> 5.15 "
    }
  }
}

# Providers Info

provider "aws" {
    region = var.aws_region
    profile = "default"

}