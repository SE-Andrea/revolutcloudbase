resource "google_service_account" "terraform" {
  account_id   = var.service_account_name
  display_name = "Terraform Service Account"
}

resource "google_project_iam_member" "terraform_project_admin" {
  project = var.project_id
  role    = "roles/editor" # oppure "roles/project.admin", se hai i permessi per assegnarlo
  member  = "serviceAccount:${google_service_account.terraform.email}"
}
