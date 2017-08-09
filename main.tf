provider "vsphere" {
  user = "${var.vsphere_user}"
  password = "${var.vsphere_password}"
  vsphere_server = "${var.vsphere_server}"
  allow_unverified_ssl = true
}

module "vmware-vm" {
  source = "./vmware-vm"

  count = "3"
  region = "taiping"
  env = "prodution"
}

/*
module "vmware-folder" {
  source = "./vmware-folder"

  count = "3"
  region = "taiping"
}
*/
