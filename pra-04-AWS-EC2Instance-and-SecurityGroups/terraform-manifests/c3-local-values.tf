# "https://developer.hashicorp.com/terraform/language/values/locals"
# local values


locals {
  environment = var.environment
  owners = var.business_division
  name = "${var.business_division}-${var.environment}"
# Common tags to be assigned to all resources
  common_tags = {
    #Service = local.service_name
    owners   = local.owners
    name = local.name

  }

}