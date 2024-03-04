resource "aws_eip" "lb" {
  #domain = "default"
}

resource "aws_security_group" "allow_tls" {
  name        = "phunkytech-attribute-firewall"
  description = "Managed by Terraform"
}

resource "aws_vpc_security_group_ingress_rule" "app_port" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = "172.31.16.4/32"
  from_port         = 8080
  ip_protocol       = "tcp"
  to_port           = 8080
}

resource "aws_vpc_security_group_ingress_rule" "ssh_port" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = "172.31.16.4/32"
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}

resource "aws_vpc_security_group_ingress_rule" "ftp_port" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = "172.31.16.4/32"
  from_port         = 21
  ip_protocol       = "tcp"
  to_port           = 21
}
