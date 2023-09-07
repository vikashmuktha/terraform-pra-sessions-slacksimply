#  "https://developer.hashicorp.com/terraform/language/values/locals"
# Define local values in terraform

locals {
  environment = var.environment
  owners = var.business_division
  # name = "${local.business_division}-${local.environment}"
  name = "${var.business_division}-${var.environment}"

  # Common tags to be assigned to all resources
  common_tags = {
    #Service = local.service_name
    owners   = local.owners
    environment = local.environment
  }
}
