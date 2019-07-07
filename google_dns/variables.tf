variable "gcp_project_id" {
  default     = "dilfuz-project"
  description = "GCP project targeted"
}

variable "gcp_dns_zone" {
  default     = "dilfuz"
  description = "Google Cloud zone name to create"
}

variable "ip_domain" {
  description = "dilfuz domain IP"
  default     = "35.222.178.65"
}

variable "ip_bastion" {
  description = "dilfuz Bastion Host IP"
  default     = "35.222.178.65"
}
