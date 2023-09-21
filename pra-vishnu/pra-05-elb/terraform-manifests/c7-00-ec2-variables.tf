

# " https://developer.hashicorp.com/terraform/tutorials/aws-get-started/aws-variables "

# var.instance_type
variable "instance_type" {
  description = "Providing EC2 Instance type"
  type = string
  default = "t2.micro"
}

# var.key_name
variable "key_name" {
  description = "Providing EC2 key_name"
  type = string
  default = "paris-keys.pem"
}

# var.private_instance_count
variable "private_instance_count" {
  description = "Providing private_instance_count"
  type = number
  default = 1
}

