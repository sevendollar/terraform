provider "vsphere" {
  user = "${var.vsphere_user}"
  password = "${var.vsphere_password}"
  vsphere_server = "${var.vsphere_server}"
  allow_unverified_ssl = true
}

resource "vsphere_folder" "etcd" {
  datacenter = "taiping"
  path = "jeff_etcd"
}

module "etcd-1" {
  source = "../../../modules/vmware-vm"

  name = "etcd-1"
  mac_address = "00:50:56:af:74:77"
  folder = "${vsphere_folder.etcd.path}"
  vcpu = 2
  memory = 8192
  size = 30
}

module "etcd-2" {
  source = "../../../modules/vmware-vm"

  name = "etcd-2"
  mac_address = "00:50:56:af:f3:4a"
  folder = "${vsphere_folder.etcd.path}"
  vcpu = 2
  memory = 8192
  size= 30
}

module "etcd-3" {
  source = "../../../modules/vmware-vm"

  name = "etcd-3"
  mac_address = "00:50:56:af:0f:af"
  folder = "${vsphere_folder.etcd.path}"
  vcpu = 2
  memory = 8192
  size = 30
}
