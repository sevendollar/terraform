provider "vsphere" {
  user = "${var.vsphere_user}"
  password = "${var.vsphere_password}"
  vsphere_server = "${var.vsphere_server}"
  allow_unverified_ssl = "true"
}

resource "vsphere_folder" "test" {
  datacenter = "taiping"
  path = "jeff_test1"
}

module "test_vm" {
  source = "../../../modules/vmware-vm"

  name = "test"
  mac_address = ""
  folder = "${vsphere_folder.test.path}"
}
