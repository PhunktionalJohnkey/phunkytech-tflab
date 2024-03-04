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

variable "list" {
  type = list
  default = ["m5.large", "m5.xlarge", "t2.medium"]
}

variable "types" {
  type = map
  default = {
    eu-west-1 = "t2.micro"
    eu-west-2 = "t2.nano"
    eu-west-3 = "t2.small"
  }
}
