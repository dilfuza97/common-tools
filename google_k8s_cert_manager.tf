## Deploy cert manger
resource "helm_release" "cert_manager" {
 depends_on = [
   "kubernetes_namespace.service_tools",
   "kubernetes_service_account.tiller",
   "kubernetes_secret.tiller",
   "kubernetes_cluster_role_binding.tiller_cluster_rule",
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

 name      = "dilfuz-cert-manager"
 chart     = "stable/cert-manager"
 namespace = "${var.namespace}"
 version   = "v0.3.0"
 wait      =  true

 set {
   name  = "ingressShim.defaultIssuerName"
   value = "letsencrypt-dilfuz-prod"
 }
 set {
   name  = "ingressShim.defaultIssuerKind"
   value = "ClusterIssuer"
 }
}
