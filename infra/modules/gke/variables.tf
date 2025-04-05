variable "cluster_name" {}
variable "location" {}
variable "node_count" {
  description = "The number of nodes in the initial node pool"
  type        = number
  default     = 1
}

variable "machine_type" {
  default = "e2-medium"
}
variable "network" {}
variable "subnetwork" {}

