terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~>2.0.0"
    }
  }
}

module "wp_stack" {
  source = "./modules/do-wp-stack"

  region = var.region
  wp_vm_count = var.wp_vm_count
  vms_ssh = digitalocean_ssh_key.ssh.fingerprint
  do_token = var.do_token
}


resource "digitalocean_ssh_key" "ssh" {
  name       = "vm-devops"
  public_key = file("~/.ssh/id_rsa.pub")
}

provider "digitalocean" {
  token = var.do_token
}