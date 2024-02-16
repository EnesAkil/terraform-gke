# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/containter_cluster
resource "google_container_cluster" "primary" {
  name                     = var.name
  location                 = var.location
  remove_default_node_pool = true
  initial_node_count       = 1
  network                  = google_compute_network.main.self_link
  subnetwork               = google_compute_subnetwork.test_dt.self_link
  logging_service          = "logging.googleapis.com/kubernetes"
  monitoring_service       = "monitoring.googleapis.com/kubernetes"


  addons_config {
    http_load_balancing {
      # we use nginx ingress
      disabled = true
    }
    horizontal_pod_autoscaling {
      disabled = true
    }
  }

  release_channel {
    channel = "REGULAR"
  }

}
