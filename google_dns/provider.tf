provider "google" {
  credentials = "${file("/Users/admin/Interview/dilfuz-service-account.json")}"
  project     = "dilfuz-project"
  region      = "us-central1"
}
