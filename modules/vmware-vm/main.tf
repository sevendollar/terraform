resource "vsphere_virtual_machine" "t1" {
#  count = "${var.env == "prodution" ? "${var.count}" : "0" }"
  count = "${var.count}"
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
    size = "${var.size}"
    name = "vmdk-coreos-${md5("${var.name}${count.index}")}"
    datastore = "tp_NetApp_flra_vmware"
  }

  lifecycle {
    create_before_destroy = true
  }
}
