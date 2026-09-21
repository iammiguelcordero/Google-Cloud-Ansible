locals {
  ssh_user = "debian"
}

resource "local_file" "ansible_inventory" {
  filename = "${path.module}/inventory.ini"
  content  = <<EOT
[ansible_control]
${google_compute_instance.vm_instance[0].name} ansible_host=${google_compute_instance.vm_instance[0].network_interface[0].network_ip} ansible_user=debian

[webservers]
${google_compute_instance.vm_instance[1].name} ansible_host=${google_compute_instance.vm_instance[1].network_interface[0].network_ip} ansible_user=debian

[dbservers]
${google_compute_instance.vm_instance[2].name} ansible_host=${google_compute_instance.vm_instance[2].network_interface[0].network_ip} ansible_user=debian
EOT
}
