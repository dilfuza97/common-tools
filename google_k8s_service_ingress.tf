## Before deploy ingress for each services it will make sure all services available
resource "helm_release" "dilfuz_services_ingress" {
  depends_on = [
    "helm_release.ingress_controller",
    "kubernetes_deployment.jenkins_dilfuz_deployment",
    "kubernetes_deployment.grafana_dilfuz_deployment",
    "kubernetes_deployment.vault_dilfuz_deployment",
    "kubernetes_deployment.nexus_dilfuz_deployment",
    "kubernetes_service.jenkins_dilfuz_service",
    "kubernetes_service.grafana_dilfuz_service",
    "kubernetes_service.vault_dilfuz_service",
    "kubernetes_service.nexus_dilfuz_service"
  ]
  name = "dilfuz-services-ingress-${var.namespace}"
  namespace = "${var.namespace}"
  chart = "./helm-dilfuz"
  set {
    name = "grafanaport"
    value = "${var.grafana_service_port}"
  }

  set {
    name = "jenkinsport"
    value = "${var.jenkins_service_port}"
  }

  set {
    name = "nexusport"
    value = "${var.nexus_service_port}"
  }

  set {
    name = "vaultport"
    value = "${var.vault_service_port}"
  }

  set {
    name = "repo_port"
    value = "${var.repo_port}"
  }

  set {
    name = "email"
    value = "${var.email}"
  }
}
