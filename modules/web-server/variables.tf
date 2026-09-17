variable "location" {
    description = "Регіон хмарного провайдера"
    type        = string
    default     = "hel1"
}

variable "server_image" {
    description = "Версія ubuntu для сервера"
    type        = string
    default     = "ubuntu-22.04"
}

variable "server_name" {
  description = "Імʼя сервера"
  type        = string
  default     = "prod-web-server"
}

variable "server_type" {
    description = "Версія сервера"
    type        = string
    default     = "cx23"
}

variable name_ssh {
    description = "Чий ключ"
    type        = string
    default     = "macbook-roman"
}

variable ssh_keys {
    description = "ssh pub key"
    type        = string
    default     = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIFSgYFt9vcEja3OvW+cTXaF6197X8XM83F6pzdw+mrAn roman_hetzner_vpn"
}