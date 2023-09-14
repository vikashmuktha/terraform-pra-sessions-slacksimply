# " https://registry.terraform.io/modules/terraform-aws-modules/ec2-instance/aws/latest "

# module.ec2_bastion
module "ec2_bastion" {

  source                    = "terraform-aws-modules/ec2-instance/aws"
  name                      = "${var.environment}-Bastion"
  version                   = "5.5.0"
  ami                       = data.aws_ami.amzlinux2.id
  instance_type             = var.instance_type
  key_name                  = var.instance_keypair
  # monitoring              = true
  vpc_security_group_ids    = [ module.public_bastion_sg.this_security_group_id ]
  subnet_id                 = var.vpc_public_subnets[0]
  tags                      = local.common_tags

}