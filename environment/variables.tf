variable "credentials_file" {
  description = "Google Credentials File"
  sensitive   = true
}

variable "project_id" {
  description = "GCP Project ID"
}

variable "region" {
  description = "GCP Resource Region"
  type        = string
}

variable "zone" {
  description = "GCP Resource Zone"
  type        = string
}
