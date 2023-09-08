# "https://developer.hashicorp.com/terraform/language/values/variables"
# Generic Variables

# AWS Regions
# var.aws_region
variable "aws_region" {
  description = "AWS Region"
  type    = string
  default = "eu-west-3"
}

# Environment Varible
# var.environment
variable "environment" {
  description = "AWS Environment"
  type    = string
  default = "Dev"
}


# Business_Divsion
# var.business_divsion
variable "business_divsion" {
  description = "AWS Business Divsion"
  type    = string
  default = "HR"
}


