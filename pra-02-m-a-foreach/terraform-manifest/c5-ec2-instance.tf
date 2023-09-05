# Availability Zones Datasource
data "aws_availability_zones" "my_azones" {
  filter {
    name   = "opt-in-status"
    values = ["opt-in-not-required"]
  }
}


# Resources Block

resource "aws_instance" "myaws" {
  ami = data.aws_ami.amzlinux2.id
  #instance_type = var.instance_type
  #instance_type = var.instance_type_map["0"] # For List
  instance_type = var.instance_type_map["Stanging"] # For Map {}
  vpc_security_group_ids = [ aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id ]
  key_name = var.instance_keypair
  user_data = file("${path.module}/app1-install.sh")  #"https://developer.hashicorp.com/terraform/language/functions/file"
 # Create EC2 Instance in all Availabilty Zones of a VPC  
  for_each = toset(data.aws_availability_zones.my_azones.names)
  availability_zone = each.key  # You can also use each.value because for list items each.key == each.value
  #count = 2 
  tags = {
    "Name" = "Demo-EC2-${each.value}"
  }
}