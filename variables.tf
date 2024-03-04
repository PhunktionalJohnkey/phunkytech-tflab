variable "vpn_ip" {
  type        = string
  description = "vpn cidr ip"
  default     = "172.31.16.4/32"
}

variable "app_port" {
  type        = number
  description = "port number"
  default     = 8080
}

variable "ssh_port" {
  type        = number
  description = "port number"
  default     = 22
}

variable "ftp_port" {
  type        = number
  description = "port number"
  default     = 21
}

variable "usernumber" {
  type = number
}

variable "elb_name" {
  type = string
  default = "phunkytech-terraform-elb"
}

variable az {
  type = list
}

variable timeout {
  type = number
}
