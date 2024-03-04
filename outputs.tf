output "public_ip" {
  value = aws_eip.lb # to get all the attributes of the eip
  #value = aws_eip.lb.public_ip
  #value = "https://${aws_eip.lb.public_ip}:8080" # example of customized version
}
