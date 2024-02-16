# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork
resource "google_compute_network" "test_dt" {
  name                    = "test_dt"
  auto_create_subnetworks = false
}
