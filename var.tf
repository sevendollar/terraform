variable "vsphere_user" {}
variable "vsphere_password" {}
variable "vsphere_server" {}
variable "env" {
  type = "string"
  default = "prodution"
}
variable "dns_servers" {
  type = "list"
  default = ["8.8.8.8", "8.8.4.4"]}
