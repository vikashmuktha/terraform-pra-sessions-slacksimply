# "https://developer.hashicorp.com/terraform/language/values/locals"
# # Define local values in terraform

locals {

  environment = var.environment
  owner = var.business_divsion
  # name = "${local.owner}-${local.environment}"
  name = "${var.business_divsion}-${var.environment}"
  # Common tags to be assigned to all resources
  # local.common_tags
  common_tags = {
    # Service = local.service_name
    Owner   = local.owner
    environment = local.environment
    
  }
}

