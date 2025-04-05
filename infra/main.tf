provider "google" {
  project = var.project_id
  region  = var.region
}


module "network" {
  source       = "./modules/network"
  network_name = var.network_name
  region       = var.region
}

module "gke" {
  source       = "./modules/gke"
  cluster_name = "revolut-cluster"
  location     = var.region
  node_count   = 1
  machine_type = "e2-micro"
  network      = module.network.network_self_link
  subnetwork   = module.network.subnet_self_link
}

resource "google_project_iam_member" "terraform_editor" {
  project = var.project_id
  role    = "roles/editor"
  member  = "user:andrea.parlongo@gmail.com"
}
