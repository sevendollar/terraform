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
}

module "vmware-folder" {
  source = "github.com/sevendollar/terraform/vmware-folder"

  count = "3"
  datacenter = "${var.vm_datacenter}"
}
