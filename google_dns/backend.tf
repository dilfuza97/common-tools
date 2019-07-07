terraform {
  backend "gcs" {
    bucket  = "dilfuz-bucket"
    prefix  = "tools/dns-manager"
    project = ""
  }
}
