########################################################
#                   GCP organization config
########################################################
variable "gcp_default_region" {
  description = "Default region for resources."
  type        = string
}

variable "gcp_terraform_sa_email" {
  description = "Service account email of the account to impersonate to run Terraform."
  type        = string
}
