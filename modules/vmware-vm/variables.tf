variable "module_name" {
  description = "module name"
  default = "terraform"
}

variable "host_name" {
  description = "host name"
  default = ""
}

variable "datacenter" {
  description = "vsphere datacenter"
  default = "taiping"
}

variable "mac_addr" {
  description = ""
}

variable "dns" {
  type = "list"
  default = ["8.8.8.8", "168.95.1.1"]
}

variable "folder" {
  default = ""
}

/*
variable "count" {
  description = "how many vms will it be?"
}

variable "env" {
  description = "enviroment: test or prodution"
}
*/
