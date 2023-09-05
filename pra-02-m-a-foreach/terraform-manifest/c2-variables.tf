# Variables Block
# "https://developer.hashicorp.com/terraform/language/values/variables"

# var.instance_region

variable "instance_region" {
  description = "instance_region" 
  type    = string
  default = "eu-west-3"
}

# var.instance_type this for list

variable "instance_type" {
  description = "aws instance_type" 
  type    = string
  default = "t2.micro"
}

# var.instance_type this for list

variable "instance_type_list" {
  description = "aws instance_type_list" 
  type    = list(string)
  default = ["t2.micro", "t2.small", "t2.medium"]
}

# var.instance_type_map this for map
# var.instance_type_map.Stanging

variable "instance_type_map" {
  description = "aws instance_type_map" 
  type    = map(string)
  default = {
    "Stanging" = "t2.micro"
    "QA" = "t2.small"
    "Pre_prod" = "t2.medium"
  }
}

# var.instance_keypair

variable "instance_keypair" {
  description = "instance_region" 
  type    = string
  default = "paris-keys"
}

