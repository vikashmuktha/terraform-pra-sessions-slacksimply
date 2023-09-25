# " https://registry.terraform.io/modules/terraform-aws-modules/ec2-instance/aws/latest "
#  Mainly check the AMI, Version, Instance-type, Key, Subnetes and Security-Groups

# module.bastion_server
module "bastion_server" {

  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.5.0"
  # insert the 10 required variables here
  name = "${local.name}-bastion-server"
  
  ami = data.aws_ami.amzlinux2.id  # Defaulty this ami is not available we can add it.
  
  instance_type          = var.instance_type
  key_name               = var.instance_keypair
  # monitoring             = true
  
  vpc_security_group_ids = [module.bastion_sg.security_group_id]
  subnet_id              = module.vpc.public_subnets[0]


  tags = local.common_tags

}