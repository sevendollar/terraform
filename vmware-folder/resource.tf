resource "vsphere_folder" "web" {
  count = "${var.count}"
  path = "${var.datacenter}_terraform_web_folder_${count.index}"
  datacenter = "${var.datacenter}"
}
