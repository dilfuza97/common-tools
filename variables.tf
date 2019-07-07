variable    "grafana_password"            {
  default = "Redhat"
}
variable    "grafana_username"            {
  default = "grafuser"
}
variable    "namespace"                   {
  default = "tools"
}
variable    "vault_token"                 {
  default = "Redhat"
}
variable "mysql_password" {
  default = "Redhat"
}

variable "slack_python_token" {
  default = "Redhat"
}

variable "monitor_image" {
  default = "dilfuz/dilfuz-monitor:0.2"
}

variable    "grafana_service_port"        {
  default = 8080
  description = "Please do not change this ports."
}

variable    "jenkins_service_port"     {
  default = 8081
  description = "Please do not change this ports."
}

variable    "vault_service_port"       {
  default = 8082
  description = "Please do not change this ports."
}

variable    "nexus_service_port"       {
  default = 8083
  description = "Please do not change this ports."
}


variable "tiller_version" {
  default = "v2.11.0"
  description = "Please provide version of the tiller."
}

variable "tiller_namespace" {
  default = "kube-system"
  description = "Tiller by default will deploy to kube-system"
}

variable "repo_port" {
  default = 8085
}

variable "email" {
  default = "dilfuzsolutions@gmail.com"
}
