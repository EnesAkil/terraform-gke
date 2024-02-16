data "google_client_config" "current" {
}

data "google_container_cluster" "primary" {
  name     = var.name
  location = var.region
  project  = var.project
  depends_on = [
    google_container_cluster.primary
  ]
}
