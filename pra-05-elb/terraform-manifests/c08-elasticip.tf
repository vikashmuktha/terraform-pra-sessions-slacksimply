# " https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip "
## Create Elastic IP for Bastion Host
# Resource - depends_on Meta-Argument

# aws_eip.lb
resource "aws_eip" "lb" {
  depends_on = ["module.bastion_server", "module.vpc"]  
  instance = module.bastion_server.id[0]
  vpc = true
  tags = local.common_tags

  ## https://developer.hashicorp.com/terraform/language/resources/provisioners/local-exec
  ## Local Exec Provisioner:  local-exec provisioner (Destroy-Time Provisioner - Triggered during deletion of Resource)
  provisioner "local-exec" {
    command = "echo Destroy time prov `date` >> destroy-time-prov.txt"
    working_dir = "local-exec-output-files/"
    when = destroy
    #on_failure = continue
  }

}


