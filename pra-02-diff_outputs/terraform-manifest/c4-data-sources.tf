# "https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami"
# Data Sources  for AMI
# Datasource-1
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/availability_zones.html



data "aws_availability_zones" "my_azones" {
  filter {
    name   = "opt-in-status"
    values = ["opt-in-not-required"]
  }
}




# data.aws_ami.amzlinux2.id

data "aws_ami" "amzlinux2" {
  # executable_users = ["self"]
  most_recent      = true
  # name_regex       = "^myami-\\d{3}"
  owners           = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-*-gp2"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }

}



# Data source block
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ec2_instance_type_offerings
# data.aws_ec2_instance_type_offerings.my_ins_type


data "aws_ec2_instance_type_offerings" "my_ins_type" {
  for_each = toset(data.aws_availability_zones.my_azones.names)
  filter {
    name   = "instance-type"
    values = ["t2.micro"]
  }

  filter {
    name   = "location"
    values = [each.key]
  }

  location_type = "availability-zone"
}


