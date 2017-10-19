resource "vsphere_virtual_machine" "t1" {
  count = "${var.count}"
  name = "coreos-${var.name}-${count.index + 1}"
  vcpu = "${var.vcpu}"
  memory = "${var.memory}"
  time_zone = "Asia/Taipei"
#  domain = "cvl.com.tw"
  dns_servers = "${var.dns}"

  network_interface {
    label = "${var.label}"
    mac_address = "${var.mac_address}"
    ipv4_address = "${var.ipv4_address}"
    ipv4_prefix_length = "${var.ipv4_prefix_length}"
    ipv4_gateway = "${var.ipv4_gateway}"
  }

  disk {
#    template = "taiping_image_coreos"
    datastore = "synology-4ae48f"
    name = "vmdk-coreos-${var.name}-${count.index + 1}"
    type = "thin"
    size = "${var.size}"
  }

  cdrom {
    datastore = "synology-4ae48f"
    path = "coreos_production_iso_image.iso"
  }

  lifecycle {
    create_before_destroy = true
  }
}
