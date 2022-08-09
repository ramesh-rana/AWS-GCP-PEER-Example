# VPC specs

resource "google_compute_network" "main" {
  project                 = "focal-sight-357404"
  name                    = "main"
  auto_create_subnetworks = "false"
}

resource "google_compute_subnetwork" "subnet" {
  project       = "focal-sight-357404"
  name          = "subnet1"
  ip_cidr_range = var.gcp_cidr
  network       = google_compute_network.main.self_link
}
