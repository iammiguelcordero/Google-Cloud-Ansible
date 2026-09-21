locals {
  vm_names = [
    "${var.vm_config.name}ansible-001",
    "${var.vm_config.name}nginx-001",
    "${var.vm_config.name}mysql-001",
    "${var.vm_config.name}datadog-001"
  ]
}

resource "tls_private_key" "ssh_key" {
  algorithm = "ED25519"
}

resource "google_compute_instance" "vm_instance" {
  count        = length(local.vm_names)
  name         = local.vm_names[count.index]
  machine_type = "n2-standard-2"
  zone         = var.vm_config.zone

  tags = ["datadog", "test"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
      size  = 10
    }
  }

  network_interface {
    network = "default"

    access_config {
    }
  }

  metadata = {
    ssh-keys = "${local.ssh_user}:${tls_private_key.ssh_key.public_key_openssh}"
  }

  labels = {
    environment = "dev"
    managed_by  = "terraform"
    owner       = "miguel-cordero"
  }
}
