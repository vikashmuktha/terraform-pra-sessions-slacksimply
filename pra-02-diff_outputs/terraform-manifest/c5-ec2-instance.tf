# EC2 instance 
# aws_instance.amzlinux2


resource "aws_instance" "amzlinux2" {
  
  ami = data.aws_ami.amzlinux2.id
  # ami = data.aws_ec2_instance_type_offerings.my_ins_type
  # instance_type = var.instance_type
  # instance_type = var.instance_type_list
  instance_type = var.instance_type_map["Stagging"]
  vpc_security_group_ids = [ "aws_security_group.vpc-web.id", "aws_security_group.vpc-ssh.id" ] 
  key_name = var.instance_keypair
  user_data = file("${path.module}/app1-install.sh")
  count = 2
  tags = {
    "Name" = "Demo-EC2-${count.index}"
  }


}