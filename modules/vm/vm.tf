resource "google_compute_instance" "vm" {
  name         = var.name
  machine_type = var.machine_type
  zone         = var.zone
  project      = var.project

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    network = var.network_name
    access_config {
    }
  }
}
