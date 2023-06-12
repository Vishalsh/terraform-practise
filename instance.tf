resource "aws_instance" "terraform_practise" {
  ami           = lookup(var.AMIS, var.AWS_REGION)
  instance_type = "t2.micro"
  tags = {
    Name = "terraform_practise"
  }
  provisioner "local-exec" {
    command = "echo ${aws_instance.terraform_practise.private_ip} >> private_ips.txt"
  }
}

output "ip" {
  value = aws_instance.terraform_practise.public_ip
}
