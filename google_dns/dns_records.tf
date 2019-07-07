resource "google_dns_managed_zone" "dilfuz" {
  name     = "dilfuz"
  dns_name = "dilfuz.com."
  project  = "${var.gcp_project_id}"
}

resource "google_dns_record_set" "dilfuz" {
  managed_zone = "${google_dns_managed_zone.dilfuz.name}"
  name         = "${google_dns_managed_zone.dilfuz.dns_name}"
  type         = "A"
  ttl          = 300

  rrdatas = ["${var.ip_domain}"]
}

resource "google_dns_record_set" "jenkins" {
  managed_zone = "${google_dns_managed_zone.dilfuz.name}"
  name         = "jenkins.${google_dns_managed_zone.dilfuz.dns_name}"
  type         = "A"
  ttl          = 300

  rrdatas = ["${var.ip_domain}"]
}

resource "google_dns_record_set" "nexus" {
  managed_zone = "${google_dns_managed_zone.dilfuz.name}"
  name         = "nexus.${google_dns_managed_zone.dilfuz.dns_name}"
  type         = "A"
  ttl          = 300

  rrdatas = ["${var.ip_domain}"]
}

resource "google_dns_record_set" "grafana" {
  managed_zone = "${google_dns_managed_zone.dilfuz.name}"
  name         = "grafana.${google_dns_managed_zone.dilfuz.dns_name}"
  type         = "A"
  ttl          = 300

  rrdatas = ["${var.ip_domain}"]
}

resource "google_dns_record_set" "jira" {
  managed_zone = "${google_dns_managed_zone.dilfuz.name}"
  name         = "jira.${google_dns_managed_zone.dilfuz.dns_name}"
  type         = "A"
  ttl          = 300

  rrdatas = ["${var.ip_domain}"]
}

resource "google_dns_record_set" "vault" {
  managed_zone = "${google_dns_managed_zone.dilfuz.name}"
  name         = "vault.${google_dns_managed_zone.dilfuz.dns_name}"
  type         = "A"
  ttl          = 300

  rrdatas = ["${var.ip_domain}"]
}

resource "google_dns_record_set" "docker" {
  managed_zone = "${google_dns_managed_zone.dilfuz.name}"
  name         = "docker.${google_dns_managed_zone.dilfuz.dns_name}"
  type         = "A"
  ttl          = 300

  rrdatas = ["${var.ip_domain}"]
}

resource "google_dns_record_set" "bastion" {
  managed_zone = "${google_dns_managed_zone.dilfuz.name}"
  name         = "bastion.${google_dns_managed_zone.dilfuz.dns_name}"
  type         = "A"
  ttl          = 300

  rrdatas = ["${var.ip_bastion}"]
}

resource "google_dns_record_set" "dev" {
  managed_zone = "${google_dns_managed_zone.dilfuz.name}"
  name         = "dev.${google_dns_managed_zone.dilfuz.dns_name}"
  type         = "A"
  ttl          = 300

  rrdatas = ["${var.ip_domain}"]
}

resource "google_dns_record_set" "qa" {
  managed_zone = "${google_dns_managed_zone.dilfuz.name}"
  name         = "qa.${google_dns_managed_zone.dilfuz.dns_name}"
  type         = "A"
  ttl          = 300

  rrdatas = ["${var.ip_domain}"]
}

resource "google_dns_record_set" "prod" {
  managed_zone = "${google_dns_managed_zone.dilfuz.name}"
  name         = "prod.${google_dns_managed_zone.dilfuz.dns_name}"
  type         = "A"
  ttl          = 300

  rrdatas = ["${var.ip_domain}"]
}

resource "google_dns_record_set" "storage" {
  managed_zone = "${google_dns_managed_zone.dilfuz.name}"
  name         = "storage.${google_dns_managed_zone.dilfuz.dns_name}"
  type         = "A"
  ttl          = 300

  rrdatas = ["${var.ip_domain}"]
}

resource "google_dns_record_set" "api_platform" {
  managed_zone = "${google_dns_managed_zone.dilfuz.name}"
  name         = "api.academy.${google_dns_managed_zone.dilfuz.dns_name}"
  type         = "A"
  ttl          = 300

  rrdatas = ["${var.ip_domain}"]
}

resource "google_dns_record_set" "dev_api_platform" {
  managed_zone = "${google_dns_managed_zone.dilfuz.name}"
  name         = "dev.api.academy.${google_dns_managed_zone.dilfuz.dns_name}"
  type         = "A"
  ttl          = 300

  rrdatas = ["${var.ip_domain}"]
}

resource "google_dns_record_set" "qa_api_platform" {
  managed_zone = "${google_dns_managed_zone.dilfuz.name}"
  name         = "qa.api.academy.${google_dns_managed_zone.dilfuz.dns_name}"
  type         = "A"
  ttl          = 300

  rrdatas = ["${var.ip_domain}"]
}

resource "google_dns_record_set" "academy" {
  managed_zone = "${google_dns_managed_zone.dilfuz.name}"
  name         = "academy.${google_dns_managed_zone.dilfuz.dns_name}"
  type         = "A"
  ttl          = 300

  rrdatas = ["${var.ip_domain}"]
}

resource "google_dns_record_set" "devacademy" {
  managed_zone = "${google_dns_managed_zone.dilfuz.name}"
  name         = "dev.academy.${google_dns_managed_zone.dilfuz.dns_name}"
  type         = "A"
  ttl          = 300

  rrdatas = ["${var.ip_domain}"]
}

resource "google_dns_record_set" "qaacademy" {
  managed_zone = "${google_dns_managed_zone.dilfuz.name}"
  name         = "qa.academy.${google_dns_managed_zone.dilfuz.dns_name}"
  type         = "A"
  ttl          = 300

  rrdatas = ["${var.ip_domain}"]
}
