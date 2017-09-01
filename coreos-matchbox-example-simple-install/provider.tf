// Configure the matchbox provider
provider "matchbox" {
  endpoint    = "${var.matchbox_rpc_endpoint}"
  client_cert = "${file("client.crt")}"
  client_key  = "${file("client.key")}"
  ca          = "${file("ca.crt")}"
}
