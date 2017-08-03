variable "vsphere_user" {}
variable "vsphere_password" {}
variable "vsphere_server" {}

provider "vsphere" {
  user           = "${var.vsphere_user}"
  password       = "${var.vsphere_password}"
  vsphere_server = "${var.vsphere_server}"
  allow_unverified_ssl = true
}

resource "vsphere_virtual_machine" "web" {
  count = "2"
  name = "terraform-web-${count.index}"
  vcpu = "1"
  memory = "512"
  datacenter = "taiping"
  cluster = "production"

  network_interface {
    label = "vlan515"
  }
  disk {
    template = "vagrant-templates/base-ubuntu-wily-taiping"
    type = "thin"
    datastore = "tp_NetApp_flra_vmware"
  }
}
