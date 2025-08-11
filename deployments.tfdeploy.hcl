store "varset" "tokens" {
  id = "varset-RhxhHwHRB1eFuW3t"
  category = "terraform"
}

deployment production {
  inputs = {
    regions = ["europe-north1", "europe-west1", "europe-west2"]
    gcp-creds = store.varset.tokens.gcp-creds
    deploy_gcs = ["true"]
  }
}

deployment staging {
  inputs = {
    regions    = ["europe-north1", "europe-west1"]
    gcp-creds = store.varset.tokens.gcp-creds
    deploy_gcs = []
  }
}