# " https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource "
# Create a Null Resource and Provisioners


resource "null_resource" "name" {
  depends_on = [module.bastion_server]
  # Connection Block for Provisioners to connect to EC2 Instance
  connection {
    type     = "ssh"
    host     = aws_eip.bastion_lb.public_ip    
    user     = "ec2-user"
    password = ""
    private_key = file("private-key/paris-keys.pem") 
  }  


## " https://developer.hashicorp.com/terraform/language/resources/provisioners/file "
## File Provisioner: Copies the terraform-key.pem file to /tmp/paris-keys.pem
  provisioner "file" {
    source      = "private-key/paris-keys.pem"
    destination = "/tmp/paris-keys.pem"
  }

## " https://developer.hashicorp.com/terraform/language/resources/provisioners/remote-exec "  
## Remote Exec Provisioner: Using remote-exec provisioner fix the private key permissions on Bastion Host
  provisioner "remote-exec" {
    inline = [
      "sudo chmod 400 /tmp/paris-keys.pem"
    ]
  }

## " https://developer.hashicorp.com/terraform/language/resources/provisioners/local-exec "  
## Local Exec Provisioner:  local-exec provisioner (Creation-Time Provisioner - Triggered during Create Resource)
  provisioner "local-exec" {
    command = "echo VPC created on `date` and VPC ID: ${module.vpc.vpc_id} >> creation-time-vpc-id.txt"
    working_dir = "local-exec-output-files/"
    #on_failure = continue
  }
        
        # *******   Creation Time Provisioners - By default they are created during resource creations (terraform apply) ******* #
        # *******   Destory Time Provisioners - Will be executed during "terraform destroy" command (when = destroy) *******  #


## Local Exec Provisioner:  local-exec provisioner (Destroy-Time Provisioner - Triggered during deletion of Resource)
   /*  
   provisioner "local-exec" {
    command = "echo Destroy time prov `date` >> destroy-time-prov.txt"
    working_dir = "local-exec-output-files/"
    when = destroy
    #on_failure = continue
   }  
  */

}

