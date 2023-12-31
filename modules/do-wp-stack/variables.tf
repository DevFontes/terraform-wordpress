variable "do_token" {
  type = string
}

variable "region" {
  type    = string
  default = "nyc1"
}

variable "wp_vm_count" {
  type = number
  default = 2
  description = "Quantity VMs of Wordpress"

  validation {
    condition     = var.wp_vm_count > 1
    error_message = "Minimun 2 Machines are needed"
  }
}

variable "vms_ssh" {
  type = string
  description = "SSH Keys to VMs"
}