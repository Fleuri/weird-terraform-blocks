required_providers {
  google = {
    source  = "hashicorp/google"
    version = "~> 6.47"
  }
}

provider "google" "this" {
  config {
    region  = "europe-north1"
    project = "ringed-valor-196605"
    credentials = var.gcp-creds
  }
}

variable "gcp-creds" {
  description = "The credentials for the Google Cloud provider"
  type        = string
  default     = ""
}
