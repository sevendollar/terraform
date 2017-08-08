variable "vsphere_user" {}
variable "vsphere_password" {}
variable "vsphere_server" {}

variable "region" {
  description = "vsphere datacenter"
}

variable "env" {
  description = "test or prodution enviroment"
  type = "string"
}

variable "dns" {
  type = "list"
  default = ["8.8.8.8", "168.95.1.1"]
}

variable "map_thing" {
  type = "map"
  default = {
    "a" = "1"
    "b" = "2"
  }
}
