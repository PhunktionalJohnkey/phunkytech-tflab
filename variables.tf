variable "vpn_ip" {
  type = string
  description = "vpn cidr ip"
  default = "172.31.16.4/32"
}

variable app_port {
  type = number
  description = "port number"
  default   = 8080
}

variable ssh_port {
  type = number
  description = "port number"
  default   = 22
}

variable ftp_port {
  type = number
  description = "port number"
  default   = 21
}
