output "wp_lb_ips" {
  value = digitalocean_loadbalancer.wp_lb.ip
  description = "Loadbalancer IP address"
}

output "wp_vms_ips" {
  value = digitalocean_droplet.vm_wp[*].ipv4_address
  description = "Virtaul Machines IPs addresses"
}

output "nfs_vms_ip" {
  value = digitalocean_droplet.vm_wp[*].ipv4_address
  description = "NFS Machine IP addresses"
}

output "database_user" {
  value = digitalocean_database_user.wp_database_user.name
  description = "Database username"
  sensitive = true
}

output "database_password" {
  value = digitalocean_database_user.wp_database_user.password
  description = "Database password"
  sensitive = true
}