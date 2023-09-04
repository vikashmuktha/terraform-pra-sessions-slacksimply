# Intially starting with terraform blocks
# Now we can just press control + space and it will show you some lists
# Just type terraform and enter it will open terraform block
terraform {
  required_version = "~> 1.5"       # Now first we can specify the terraform version, The version it will take 1.5 and above versions by using tilde greaterthan for version constraints.
  required_providers {      #Then we can provide the providers like AWS, GCP, AZURE and soo....
    aws = {             #control + sapce it shows many local names, we can select name and replace with provider like as of now we are using aws, so we given aws. 
      source = "hashicorp/aws"  # Under local names we can select source , take it from "https://registry.terraform.io/" in terraform documentation we can see the use providers.
      version = "~> 5.15" #Check the version by using terraform documentation, by using tilde it will take 5.15 and above version.
    }
  }
}

# Provider Block
provider "aws" {  # The lprovider will match under the terraform block -> required_providers -> aws {This aws will match}
  #profile = "default" 
  region = "eu-west-3"
}

/*
Note-1:  AWS Credentials Profile (profile = "default") configured on your local desktop terminal by using aws configure with updates aws cli version 2. 
cat $HOME/.aws/credentials
*/
