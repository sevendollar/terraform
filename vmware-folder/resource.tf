resource "vsphere_folder" "web" {
  count = "${var.count}"
  path = "${var.region}_terraform_web_folder_${count.index}"
  datacenter = "${var.region}"
}
