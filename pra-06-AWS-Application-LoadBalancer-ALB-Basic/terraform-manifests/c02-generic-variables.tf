# " https://developer.hashicorp.com/terraform/tutorials/aws-get-started/aws-variables "

# Variables Block for Instance Region
# var.instance_region
variable "instance_region" {
  description = "Providing AWS Instance Region"
  type = string
  default = "eu-west-3"
}

# Environment Variables
# var.environment
variable "environment" {
  description = "Providing environment"
  type = string
  default = "stagging"
}

# Business Division Variables
# var.business_division
variable "business_division" {
  description = "prodiving business division"
  type = string
  default = "hr"
}
