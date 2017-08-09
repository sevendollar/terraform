variable "datacenter" {
  description = "vsphere datacenter"
}

variable "count" {
  description = "how many vms will it be?"
}

variable "dns" {
  type = "list"
  default = ["8.8.8.8", "168.95.1.1"]
}
