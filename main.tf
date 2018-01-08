#
# Terraform/Providers
#
provider "triton" {
  version = ">= 0.4.1"
}

#
# Data sources
#
data "triton_account" "main" {}

data "triton_datacenter" "main" {}

#
# Resources
#
data "template_file" "cns_address" {
  template = "$${service_name}.svc.$${account_uuid}.$${datacenter_name}.${var.fqdn_base}"

  vars {
    service_name    = "${var.service_name}"
    account_uuid    = "${data.triton_account.main.id}"
    datacenter_name = "${data.triton_datacenter.main.name}"
  }
}
