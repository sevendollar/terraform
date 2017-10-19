module "management" {
  source = "../../../modules/vmware-esxi-t1-shanghai-dell-1"

  name = "jumper-shanghai"
  label = "vlan2"
  mac_address = "00:0c:29:67:63:21"
  ipv4_address = "10.6.1.65"
  ipv4_prefix_length = "24"
  ipv4_gateway = "10.6.1.254"
  size = "50"
}
