resource "aws_instance" "dev" {
  ami = "ami-0171207a7acd2a570" # hardcoded stuff
  instance_type = var.list[4] # using the key value in map to reference instance type

  count = var.istest == true ? 3 : 0

  tags = {
    Name = var.ec2_names[count.index]
    #Name = "phunkytechsvr.${count.index}"
  }
}

resource "aws_instance" "prod" {
  ami = "ami-0171207a7acd2a570" # hardcoded stuff
  instance_type = var.list[1] # using the key value in map to reference instance type

  count = var.istest == false ? 3 : 0

  tags = {
    Name = var.ec2_names[count.index]
    #Name = "phunkytechsvr.${count.index}"
  }
}


