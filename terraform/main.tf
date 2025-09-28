terraform {
  required_providers {
    grafana = {
      source  = "grafana/grafana"
      version = ">= 2.9.0"
    }
  }

  required_version = ">= 1.5.0"
}

provider "grafana" {
  url  = var.grafana_url
  auth = var.grafana_token
}

# Dashboard
resource "grafana_dashboard" "cpu" {
  config_json = file("../generated/dashboard_tf.json")
}
