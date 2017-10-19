module "management" {
  source = "../../../modules/vmware-esxi-t1-shanghai-dell-2"

  name = "jumper-shanghai"
  label = "vlan2"
  mac_address = ""
  size = "50"
}
