resource "kubernetes_pod" "pod" {
  metadata {
    name = var.pod_name
    labels = {
      App = "${var.app_label}"
    }
  }

  spec {
    container {
      image = var.container_image
      name  = var.container_name

      port {
        container_port = var.container_port
      }
    }
  }
}

