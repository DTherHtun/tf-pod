provider "kubernetes" {
  host = "${var.API_SERVER}"

  client_certificate     = "${file("./client-cert.pem")}"
  client_key             = "${file("./client-key.pem")}"
  cluster_ca_certificate = "${file("./cluster-ca-cert.pem")}"
  version                = "~> 1.8"
}
