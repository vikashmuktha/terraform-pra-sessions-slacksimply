# " https://developer.hashicorp.com/terraform/language/values/locals "

# Local Values
locals {
  owners = var.business_division
  environment = var.environment
  name = "${var.business_division}-${var.environment}"    
  # Common tags to be assigned to all resources
  common_tags = {
    # Service = local.service_name
    owners   = local.owners
    environment = local.environment
  }
}