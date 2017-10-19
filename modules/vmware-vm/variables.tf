variable "name" {
  description = "host name"
  default = ""
}

variable "datacenter" {
  description = "vsphere datacenter"
  default = "taiping"
}

variable "mac_address" {
  description = ""
}

variable "dns" {
  type = "list"
  default = ["8.8.8.8", "168.95.1.1"]
}

variable "folder" {
  default = ""
}

variable "vcpu" {
  default = "1"
}

variable "memory" {
  default = "1024"
}

variable "size" {
  default = "16"
}

variable "count" {
  description = "how many vms will it be?"
  default = "1"
}
/*
variable "env" {
  description = "enviroment: test or prodution"
}
*/
