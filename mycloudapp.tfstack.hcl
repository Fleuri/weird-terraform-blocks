component "vms" {
  for_each = var.regions

  source = "./modules/vm"

  inputs = {
    name         = "prod-vm-${each.value}"
    machine_type = "e2-medium"
    zone         = "${each.value}-a"
    image        = "debian-11-bullseye-v20240415"
  }

  providers = {
    google = provider.google.this
  }
}

/*component "storage" {
  for_each = var.deploy_gcs ? 1 : 0

  source = "./modules/gcs"

  inputs = {
    name     = "prod-storage-bucket"
    location = "EU"
  }

  providers = {
    google = provider.google.this
  }
}*/

variable "regions" {
  description = "List of regions to deploy VMs in"
  type        = set(string)
}

/*
variable "deploy_gcs" {
  description = "Flag to deploy Google Cloud Storage bucket"
  type        = bool
}
*/
