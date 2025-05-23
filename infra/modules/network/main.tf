resource "google_compute_network" "vpc_network" {
  name                    = var.network_name
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnet" {
  name          = "${var.network_name}-subnet"
  ip_cidr_range = "10.10.0.0/16"
  region        = var.region
  network       = google_compute_network.vpc_network.self_link
}

resource "google_storage_bucket" "bucket" {
  name          = "revolut-storage-bucket"
  location      = var.region
  force_destroy = true # Opzionale: permette di eliminare il bucket anche se contiene dati
}
