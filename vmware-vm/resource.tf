resource "vsphere_virtual_machine" "web" {
  count = "${var.count}"
  name = "${var.datacenter}-terraform-web-${count.index}"
  vcpu = "1"
  memory = "512"
  datacenter = "${var.datacenter}"
  cluster = "production"
  count = "${var.env == "prodution" ? "2" : "0"}"
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
