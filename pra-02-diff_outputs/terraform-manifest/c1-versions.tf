# Terraform Block
terraform {
  required_version = " ~> 1.5"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = " ~> 5.15"
    }
  }
}

# Providers Block

provider "aws" {
  profile = "default"
  region = var.instance_region
}