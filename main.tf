provider "vsphere" {
  user = "${var.vsphere_user}"
  password = "${var.vsphere_password}"
  vsphere_server = "${var.vsphere_server}"
  allow_unverified_ssl = true
}

module "web" {
  source = "github.com/sevendollar/terraform/web"

  region = "taiping"
#  env = "test"
}
