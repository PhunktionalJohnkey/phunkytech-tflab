resource "aws_instance" "phunkyec2" {
  ami = "ami-0171207a7acd2a570" # hardcoded stuff
  instance_type = "t2.micro"
}


