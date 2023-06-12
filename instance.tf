resource "aws_instance" "terraform-practise" {
  ami           = lookup(var.AMIS, var.AWS_REGION)
  instance_type = "t2.micro"
  tags = {
    Name = "terraform-practise"
  }
}
