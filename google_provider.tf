provider "google" {
  credentials = "${file("/Users/admin/Interview/dilfuz-service-account.json")}" #GOOGLE_CREDENTIALS to the path of a file containing the credential JSON
  project     = "dilfuz-project"
  region      = "us-central1"
}
