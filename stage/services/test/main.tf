provider "vsphere" {
  user = "${var.vsphere_user}"
  password = "${var.vsphere_password}"
  vsphere_server = "${var.vsphere_server}"
  allow_unverified_ssl = "true"
}

resource "vsphere_folder" "test" {
  datacenter = "taiping"
  path = "jeff_test"
}

module "test_vm" {
  source = "../../../modules/vmware-vm"

  count = 10
  name = "test"
  mac_address = ""
  folder = "${vsphere_folder.test.path}"
}

module "test_db" {
  source = "../../../modules/vmware-vm"

  vcpu = 2
  memory = 4096
  name = "test_db"
  mac_address = ""
  folder = "${vsphere_folder.test.path}"
}
