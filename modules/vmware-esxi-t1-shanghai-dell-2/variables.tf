variable "name" {
  default = ""
}

variable "datacenter" {
  default = "taiping"
}

variable "mac_address" {
  default = ""
}

variable "ipv4_address" {
  default = ""
}

variable "ipv4_prefix_length" {
  default = "24"
}

variable "ipv4_gateway" {
  default = ""
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
  default = "1"
}

variable "label" {
  description = "network tag"
  default = ""
}

variable "env" {
  description = "enviroment: test or prodution"
  default = ""
}
