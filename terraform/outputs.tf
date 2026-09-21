output "instance_private_ips" {
  value = {
    for instance in google_compute_instance.vm_instance :
    instance.name => instance.network_interface[0].network_ip
  }
  description = "IPs privadas internas para conectividad entre Ansible y los nodos"
}

output "instance_public_ips" {
  value = {
    for instance in google_compute_instance.vm_instance :
    instance.name => instance.network_interface[0].access_config[0].nat_ip
  }
  description = "IPs públicas asignadas a cada instancia"
}
