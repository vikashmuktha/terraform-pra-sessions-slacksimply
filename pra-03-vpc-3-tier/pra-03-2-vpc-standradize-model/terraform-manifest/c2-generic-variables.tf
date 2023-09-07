#https://developer.hashicorp.com/terraform/language/values/variables
# var.aws_region
# AWS Region

# var.aws_region
variable "aws_region" {
    description = "AWS instance region"
    type = string
    default = "eu-west-3"

}

# AWS Environment Varibales
# var.environment

variable "environment" {
    description = "AWS Environment Variable"
    type = string
    default = "Stagging"
}

# Business Division
# var.business_division

variable "business_division" {
    description = "aws business profile divisions"
    type = string
    default = "SAP"
}