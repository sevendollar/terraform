provider "vsphere" {
  user = "${var.vsphere_user}"
  password = "${var.vsphere_password}"
  vsphere_server = "${var.vsphere_server}"
  allow_unverified_ssl = true
}

resource "vsphere_folder" "etcd" {
  datacenter = "taiping"
  path = "jeff/etcd"
}

module "etcd-1" {
  source = "../../../modules/vmware-vm"

  host_name = "1"
  mac_addr = "00:50:56:af:74:77"
  folder = "${vsphere_folder.etcd.path}"
}

module "etcd-2" {
  source = "../../../modules/vmware-vm"

  host_name = "2"
  mac_addr = "00:50:56:af:f3:4a"
  folder = "${vsphere_folder.etcd.path}"
}

module "etcd-3" {
  source = "../../../modules/vmware-vm"

  host_name = "3"
  mac_addr = "00:50:56:af:0f:af"
  folder = "${vsphere_folder.etcd.path}"
}
