resource "random_string" "bucket_suffix" {
  length  = 8
  special = false
  upper   = false
}

resource "google_storage_bucket" "auto-expire" {
  name          = "terraform-state-${random_string.bucket_suffix.result}"
  location      = var.gcp_default_region
  force_destroy = true

  public_access_prevention = "enforced"

  versioning {
    enabled = false
  }
}