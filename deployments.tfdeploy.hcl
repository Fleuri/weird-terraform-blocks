deployment production {
  inputs = {
    regions    = ["europe-north1", "europe-west1", "europe-west2"]
    deploy_gcs = true
  }
}

deployment staging {
  inputs = {
    regions    = ["europe-north1", "europe-west1"]
    deploy_gcs = false
  }
}