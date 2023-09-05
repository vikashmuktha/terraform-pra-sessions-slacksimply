# Providing Instance Config
# aws_instance.amazonlinux2

resource "aws_instance" "amazonlinux2" {
  ami = data.aws_ami.amazonlinux2.id
  instance_type = var.instance_type
  #instance_type = var.instance_type_list
  #instance_type = var.instance_type_map
  vpc_security_group_ids = [ aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id ]  # aws_security_group.vpc-ssh
  key_name = var.instance_keypair
  user_data = file("${path.module}/app1-install.sh")  # We can give file functin by using "https://developer.hashicorp.com/terraform/language/functions/file" and we can replace the file name like app1-install.sh i have this file in our directory.
  count = 2
  tags = {
    "Name" = "Demo-EC2-${count.index}"
  } 
}




/*
# Drawbacks of using count in this example
- Resource Instances in this case were identified using index numbers 
instead of string values like actual subnet_id
- If an element was removed from the middle of the list, 
every instance after that element would see its subnet_id value 
change, resulting in more remote object changes than intended. 
- Even the subnet_ids should be pre-defined or we need to get them again 
using for_each or for using various datasources
- Using for_each gives the same flexibility without the extra churn.
*/