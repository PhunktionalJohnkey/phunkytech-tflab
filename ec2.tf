resource "aws_instance" "phunkyec2" {
  ami = "ami-0171207a7acd2a570" # hardcoded stuff
  instance_type = var.list[4] # using the key value in map to reference instance type

  count = 3

  tags = {
    Name = var.elb_names[count.index]
    #Name = "phunkytechsvr.${count.index}"
  }
}


