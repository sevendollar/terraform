resource "vsphere_folder" "web" {
#  count = "${var.count}"
  count = "${var.env == "prodution" ? "${var.count}" : "0" }"
  path = "${var.datacenter}_terraform_web_folder_${count.index}"
  datacenter = "${var.datacenter}"
}
