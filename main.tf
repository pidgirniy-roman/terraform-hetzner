terraform {
  required_version = ">= 1.15.8"

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