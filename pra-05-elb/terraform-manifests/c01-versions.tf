# " https://registry.terraform.io/providers/hashicorp/aws/latest "

# Terraform COnfig
terraform {
  required_version = "~> 1.5"
  required_providers {
    aws = {
      source    = "hashicorp/aws" 
      version   = "~> 5.17"
    }
    # Null Resources Block
    null = {
      source    = "hashicorp/null"
      version   = "~>3.2"
    }
  }
}

# Providers Block
provider "aws" {
  # Configuration options
  region = var.aws_region
  profile = "default" 
}

