variable "grafana_url" {
  type        = string
  description = "Grafana server URL"
}

variable "grafana_token" {
  type        = string
  description = "TOKEN"
}

variable "grafana_org_id" {
  type    = number
  default = 1
}

variable "grafana_username" {
  type    = string
  default = "admin"
}

variable "grafana_password" {
  type    = string
  default = "admin"
}
