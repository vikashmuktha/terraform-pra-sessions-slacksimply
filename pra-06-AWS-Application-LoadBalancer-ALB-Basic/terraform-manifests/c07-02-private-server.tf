# " https://registry.terraform.io/modules/terraform-aws-modules/ec2-instance/aws/latest "
# So mainly in this private server we can remember few things and depends on
# **********This private server mainly depends on vpc module***************
# #  Mainly check the AMI, Version, Instance-type, Key, Subnetes and Security-Groups
# Instance count & Mainly user data 

# module.private_server
module "private_server" {
  
  depends_on = [ module.vpc ] # VERY VERY IMPORTANT else userdata webserver provisioning will fail

  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.5.0"
  # insert the 10 required variables here
  name = "${local.name}-private-server"
  
  ami = data.aws_ami.amzlinux2.id
  
  instance_type          = var.instance_type
  key_name               = var.instance_keypair
  # monitoring             = true
  
  vpc_security_group_ids = [aws_security_group.private_sg.id]
  subnet_id              = module.vpc.private_subnets[0]

  # instance_count         = var.private_instance_count  
  user_data = file("${path.module}/apps-ins.sh")

  tags = local.common_tags

}