locals {
  regions = ["europe-north1, europe-west1, europe-west2"]
}

component "vms" {
  source = "./modules/vm"

  for_each = var.regions
  inputs = {
    name         = "prod-vm-${each.value}"
    machine_type = "e2-medium"
    zone         = "europe-north1-a"
    image        = "debian-11-bullseye-v20240415"
  }

  providers = {
    google = provider.google.this
  }
}

component "storage" {
  source = "./modules/gcs"
  for_each = var.deploy_gcs ? 1 : 0

  inputs = {
    name     = "prod-storage-bucket"
    location = "EU"
  }

  providers = {
    google = provider.google.this
  }
}