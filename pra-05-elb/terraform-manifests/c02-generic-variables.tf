# In Generic Variables we can mainly focus on aws region, environments and departments for this session only

# AWS Region

# var.aws_region 
variable "aws_region" {
    description     = "Providing AWS region"
    type            = string
    default         = "eu-west-3"
}

# var.environment
variable "environment" {
  description       = "Providing AWS Environment"
  type              = string
  default           = "Stagging"
}

# var.aws_region
variable "business_division" {
  description       = "Providing AWS business division"
  type              = string
  default           = "HR"
}