terraform {
  required_version = ">= 1.15.8"

  backend "http" {
    address        = "https://gitlab.com/api/v4/projects/86589553/terraform/state/default"
    lock_address   = "https://gitlab.com/api/v4/projects/86589553/terraform/state/default/lock"
    unlock_address = "https://gitlab.com/api/v4/projects/86589553/terraform/state/default/lock"
    lock_method    = "POST"
    unlock_method  = "DELETE"
    retry_wait_min = 5
  }
  
  required_providers {
    hcloud = {
      source  = "hetznercloud/hcloud"
      version = ">= 1.16.2"
    }
  }
}

module "web_server" {
  source      = "./modules/web-server"
  server_name = var.server_name
  server_type = "cx23"
}