resource "vsphere_virtual_machine" "web" {
#  count = "${var.count}"
  count = "${var.env == "prodution" ? "${var.count}" : "0" }"
  name = "${var.datacenter}-terraform-web-${count.index}"
  vcpu = "1"
  memory = "512"
  datacenter = "${var.datacenter}"
  cluster = "production"
  time_zone = "Asia/Taipei"
  domain = "cvl.com.tw"
  dns_servers = "${var.dns}"

  network_interface {
    label = "vlan515"
  }

  disk {
    template = "vagrant-templates/base-ubuntu-wily-taiping"
    type = "thin"
    datastore = "tp_NetApp_flra_vmware"
  }
}
