#
# Outputs
#
output "cns_address" {
  value = "${data.template_file.cns_address.rendered}"
}
