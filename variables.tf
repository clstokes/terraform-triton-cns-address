#
# Variables
#
variable "service_name" {
  description = "The service name to construct the CNS name from."
  type        = "string"
}

variable "fqdn_base" {
  description = "The fully qualified domain name base for the CNS address. - e.g. cns.joyent.com."
  type        = "string"
}
