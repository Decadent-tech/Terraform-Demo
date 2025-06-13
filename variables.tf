variable "bq_dataset_name" {
  description = "My BigQuery dataset name"
  type        = string
  default     = "demo_dataset"
}

variable "gcs_bucket_name" {
  description = "My GCS bucket name"
  type        = string
  default     = "terraform-demo-bucket"
}

variable "location" {
  description = "Project location (region/multi-region)"
  type        = string
  default     = "US"
}

variable "credentials" {
  description = "Path to service account JSON file"
  type        = string
  default     = "./keys/my-creds.json"
}

variable "project" {
  description = "still-container-462815-g2"
  type        = string
}
