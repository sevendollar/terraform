provider "vsphere" {
  user           = "${var.vsphere_user}"
  password       = "${var.vsphere_password}"
  vsphere_server = "${var.vsphere_server}"
  allow_unverified_ssl = true
}

resource "vsphere_virtual_machine" "web" {
  name = "terraform-web-${count.index}"
  vcpu = "1"
  memory = "512"
  datacenter = "taiping"
  cluster = "production"
  count = "${var.env == "prodution" ? "0" : "3"}"

  network_interface {
    label = "vlan515"
  }

  disk {
    template = "vagrant-templates/base-ubuntu-wily-taiping"
    type = "thin"
    datastore = "tp_NetApp_flra_vmware"
  }
}
