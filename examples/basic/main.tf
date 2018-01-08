#
# Modules
#
module "public_cns" {
  source = "../../"

  service_name = "my-service"
  fqdn_base    = "cns.joyent.com" # private fqdn for Joyent Public Cloud
}
