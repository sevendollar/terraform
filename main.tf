provider "vsphere" {
  user = "${var.vsphere_user}"
  password = "${var.vsphere_password}"
  vsphere_server = "${var.vsphere_server}"
  allow_unverified_ssl = true
}

module "vmware-vm" {
  source = "github.com/sevendollar/terraform/vmware-vm"

  count = "${var.vm_count}"
  datacenter = "${var.vm_datacenter}"
  env = "${var.vm_env}"
}

module "vmware-folder" {
  source = "github.com/sevendollar/terraform/vmware-folder"

  count = "${var.vm-folder-count}"
  datacenter = "${var.vm_datacenter}"
}
