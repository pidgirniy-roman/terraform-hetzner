terraform {
  required_providers {
    hcloud = {
      source  = "hetznercloud/hcloud"
      version = "~> 1.45"
    }
  }
}

resource "hcloud_server" "my_first_server_tf" {
  name        = var.server_name
  server_type = var.server_type
  image       = var.server_image
  ssh_keys = [hcloud_ssh_key.my_mac_key.id]
  user_data = file("${path.module}/init.yml")
}

resource "hcloud_ssh_key" "my_mac_key" {
  name       = var.name_ssh
  public_key = var.ssh_keys
}