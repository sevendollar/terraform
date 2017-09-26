resource "vsphere_virtual_machine" "etcd" {
#  count = "${var.count}"
#  count = "${var.env == "prodution" ? "${var.count}" : "0" }"
  name = "${var.datacenter}-coreos-${var.name}"
  vcpu = "${var.vcpu}"
  memory = "${var.memory}"
  datacenter = "${var.datacenter}"
  cluster = "production"
  time_zone = "Asia/Taipei"
  domain = "cvl.com.tw"
  dns_servers = "${var.dns}"
  folder = "${var.folder}"

  network_interface {
    label = "vlan501"
    mac_address = "${var.mac_address}"
  }

  disk {
#    template = "taiping_image_coreos"
    type = "thin"
    size = "16"
    name = "vmdk-etcd-${var.name}"
    datastore = "tp_NetApp_flra_vmware"
  }
}
