provider "google" {
  credentials = file("keys/my-creds.json")
  project     = "still-container-462815-g2" # Replace with your actual GCP project ID
  region      = "us-central1"
}

resource "random_id" "bucket_suffix" {
  byte_length = 4
}

resource "google_storage_bucket" "demo_bucket" {
  name          = "terraform-demo-bucket-unique123" # Change to something globally unique
  location      = "US"
  force_destroy = true

  lifecycle_rule {
    action {
      type = "Delete"
    }
    condition {
      age = 3
    }
  }

  lifecycle_rule {
    action {
      type = "AbortIncompleteMultipartUpload"
    }
    condition {
      age = 1
    }
  }
}