provider "google" {
  region = "europe-north1"
}

module "vm1" {
  source = "./modules/vm"

  name         = "vm1"
  machine_type = "e2-medium"
  zone         = "europe-north1-a"
  project      = "ringed-valor-196605"
  image        = "debian-11-bullseye-v20240415"
  network_name = google_compute_network.my_vpc.name
}

module "vm2" {
  source       = "./modules/vm"
  network_name = "default"
}



resource "google_compute_network" "my_vpc" {
  name                    = "my-vpc"
  auto_create_subnetworks = true
  project                 = var.project
}