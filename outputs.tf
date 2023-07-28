output "stack_wp_lb_ips" {
  value       = module.wp_stack.wp_lb_ip
  description = "Loadbalancer IP address"
}

output "stack_wp_vms_ips" {
  value       = module.wp_stack.wp_vms_ips
  description = "Virtaul Machines IPs addresses"
}

output "stack_nfs_vms_ip" {
  value       = module.wp_stack.nfs_vms_ip
  description = "NFS Machine IP addresses"
}

output "stack_database_user" {
  value       = module.wp_stack.database_user
  description = "Database username"
  sensitive   = true
}

output "stack_database_password" {
  value       = module.wp_stack.database_password
  description = "Database password"
  sensitive = true
}