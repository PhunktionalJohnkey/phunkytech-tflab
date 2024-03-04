resource "aws_iam_user" "lb" {
  name = var.usernumber
  #name = "average-ogbeni"
  path = "/system/"
}
