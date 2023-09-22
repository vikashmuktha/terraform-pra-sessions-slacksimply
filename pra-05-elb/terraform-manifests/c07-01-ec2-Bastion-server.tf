

# " https://registry.terraform.io/modules/terraform-aws-modules/ec2-instance/aws/5.5.0 "
# AWS EC2 Instance Terraform Module
# Bastion Host - EC2 Instance that will be created in VPC Public Subnet

# module.bastion_server
module "bastion_server" {
  
  source                    = "terraform-aws-modules/ec2-instance/aws"
  version                   = "2.17.0"
  name                      = "${local.name}-${var.vpc_name}-Bastion-Server"
  
  ami                       = data.aws_ami.amzlinux2.id ## data.aws_ami.amzlinux2
  instance_type             = var.instance_type
  key_name                  = var.key_name
  # monitoring              = true
  
  subnet_id                 = module.vpc.public_subnets[0]
  vpc_security_group_ids    = [module.public_sg.this_security_group_id]  
  

  tags                      = local.common_tags
}


