# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall

resource "google_compute_firewall" "firewall_dt" {
  name    = "firewall_dt"
  network = google_compute_network.main.name

  allow {
    protocol = "tcp"
    ports    = ["22", "80", "8080"]
  }

  allow {
    protocol = "icmp"
  }
  
}
