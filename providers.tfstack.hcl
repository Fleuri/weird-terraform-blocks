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
  }
}

