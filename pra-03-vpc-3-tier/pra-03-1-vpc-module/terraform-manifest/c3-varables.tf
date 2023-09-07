# "https://developer.hashicorp.com/terraform/language/values/variables"
# Variable Block
# var.aws_region


variable "aws_region" {
  description = "AWS Instance Region"
  type = string
  default = "eu-west-3"
}