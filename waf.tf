# resource "aws_waf_ipset" "ipset" {
#   name = "tfIPSet"

#   ip_set_descriptors {
#     type  = "IPV4"
#     value = "192.0.7.0/24"
#   }

#   ip_set_descriptors {
#     type  = "IPV4"
#     value = "10.16.0.0/16"
#   }
# }