resource "google_storage_bucket" "jpgcpbucket" {
  name          = "tla-bucket"
  location      = "US"
  force_destroy = true

  public_access_prevention = "enforced"
}