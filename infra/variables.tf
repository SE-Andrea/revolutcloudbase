variable "project_id" {
  description = "Il tuo project ID su GCP"
  type        = string
}

variable "region" {
  description = "Regione GCP"
  type        = string
  default     = "europe-west1"
}

variable "network_name" {
  description = "Nome della rete VPC"
  type        = string
  default     = "revolut-vpc"
}

variable "location" {
  description = "Cluster Location (it can be the same of the region)"
  type        = string
  default     = "europe-west1"
}

variable "node_count" {
  description = "Number of nodes in cluster"
  type        = number
  default     = 1
}

variable "service_account_name" {
  description = "Name of the service account to create"
  type        = string
  default     = "terraform-deployer"
}
