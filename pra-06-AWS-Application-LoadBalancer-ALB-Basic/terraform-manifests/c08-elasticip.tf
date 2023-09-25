# " https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip "
# Create Elastic IP for Bastion Host
# Resource - depends_on Meta-Argument
# Its mainly depends on VPC module and Bastion server
# 
resource "aws_eip" "bastion_lb" {
  depends_on = [module.bastion_server, module.vpc]  
  instance = module.bastion_server.id
  domain   = "vpc"
  # vpc = true

  tags = local.common_tags
  
  /*
  ## Local Exec Provisioner:  local-exec provisioner (Destroy-Time Provisioner - Triggered during deletion of Resource)
  provisioner "local-exec" {
    command = "echo Destroy time prov `date` >> destroy-time-prov.txt"
    working_dir = "local-exec-output-files/"
    when = destroy
    #on_failure = continue
  } 

  */

}