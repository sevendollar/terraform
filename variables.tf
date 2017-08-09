variable "vsphere_user" {}
variable "vsphere_password" {}
variable "vsphere_server" {}

variable "vm_env" {
  description = "vmware vsphere enviroment, test or prodution?"
  default = "prodution"
}
variable "vm_count" {
  description = "how many vms?"
  default = "5"
}

variable "vm-folder-count" {
  description = ""
  default = "0"
}
variable "vm_datacenter" {
  description = ""
  default = "taiping"
}
