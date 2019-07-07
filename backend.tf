terraform {
  backend "gcs" {
    bucket  = "dilfuz-bucket"
    prefix  = "tools/common_tools"
    project = "dilfuz-project"
  }
}
