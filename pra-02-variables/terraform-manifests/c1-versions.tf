# Terraform documentation: "https://registry.terraform.io/providers/hashicorp/aws/latest"

# Terraform Settings Block

terraform {
  required_version = "~> 1.5"
  required_providers {
    aws = {
        
        source = "hashicorp/aws"
        version = "~> 5.15"
    }
  }
}

# Provider Block
provider "aws" {
  profile = "default" 
  region = var.aws_region
}