# " https://registry.terraform.io/providers/hashicorp/aws/latest "

# Terraform Block


terraform {
  required_version = "~>1.5"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~>5.17"
    }

    # " https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource "  
    null = {
      source = "hashicorp/null"
      version = "~> 3.0"
    }        
  }
}

# Providers Block
provider "aws" {
  region = var.instance_region 
  profile = "default"
}


