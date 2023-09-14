# " https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource "

resource "null_resource" "name" {
  
  # " https://developer.hashicorp.com/terraform/language/resources/provisioners/connection "
  # Connection Block for Provisioners to connect to EC2 Instance
  connection {
    type        = "ssh"
    host        =  aws_eip.bastion_eip.public_ip #This is taking from elastic ip  
    user        = "ec2-user" # Check the what type of server we are deployed
    password    = ""
    private_key = file("private-key/terraform-key.pem") # Giving the exact path of file where we have pem keys
    
  }

  # " https://developer.hashicorp.com/terraform/language/resources/provisioners/file "
  # ## File Provisioner: Copies the terraform-key.pem file to /tmp/terraform-key.pem
  # Copies the  terraform-key.pem file to /tmp/terraform-key.pem
  provisioner "file" {
    source      = "private-key/terraform-key.pem"
    destination = "/tmp/terraform-key.pem"
  }

  # " https://developer.hashicorp.com/terraform/language/resources/provisioners/remote-exec "
  # ## Remote Exec Provisioner: Using remote-exec provisioner fix the private key permissions on Bastion Host
  provisioner "remote-exec" {
    inline = [
        "sudo chmod 400 /tmp/terraform-key.pem"
    ]
  }

  # " https://developer.hashicorp.com/terraform/language/resources/provisioners/local-exec "
  # ## Local Exec Provisioner:  local-exec provisioner (Creation-Time Provisioner - Triggered during Create Resource)
  provisioner "local-exec" {
    command     = "echo VPC created on `date` and VPC ID: ${module.vpc.vpc_id} >> creation-time-vpc-id.txt"
    working_dir = "local-exec-output-files/"  #Creating new dir under aws ec2 practice session "local-exec-output-files"
    #on_failure = continue
  }
    
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