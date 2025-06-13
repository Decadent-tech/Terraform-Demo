terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }
}

provider "google" {
  project     = var.project
  region      = var.location
  credentials = file(var.credentials)
}

resource "random_id" "bucket_suffix" {
  byte_length = 4
}

resource "google_storage_bucket" "demo_bucket" {
  name          = "${var.gcs_bucket_name}-${random_id.bucket_suffix.hex}"
  location      = var.location
  force_destroy = true

  lifecycle_rule {
    action {
      type = "Delete"
    }
    condition {
      age = 3
    }
  }
}

resource "google_bigquery_dataset" "demo_dataset" {
  dataset_id                  = var.bq_dataset_name
  location                    = var.location
  delete_contents_on_destroy = true
}
