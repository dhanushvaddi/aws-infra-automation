provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "ec2" {
  count         = 3
  ami           = "ami-0c02fb55956c7d316"
  instance_type = "t2.micro"
  key_name      = ""
  user_data     = file("${path.module}/ansible-install.sh")

  tags = {
    Name = "Terraform-EC2-${count.index + 1}"
  }
}
