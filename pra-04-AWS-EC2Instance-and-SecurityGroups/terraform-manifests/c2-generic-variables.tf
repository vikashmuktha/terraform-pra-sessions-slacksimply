# Generic Variables

#var.aws_region
variable "aws_region" {
  description = "Providing aws region"
  type = string
  default = "eu-west-3"
} 

#var.environment
variable "environment" {
  description = "Providing aws environment"
  type = string
  default = "Stagging"
} 

# var.business_division
variable "business_division" {
  description = "Providing aws business_division"
  type = string
  default = "SAP"
} 

