provider "aws" {
  region = "us-east-1"
}

data "aws_vpc" "default" {
  default = true
}

data "aws_subnet" "default" {
  vpc_id = data.aws_vpc.default.id
}

resource "aws_instance" "ansible_master" {
  ami           = "ami-0c55b159cbfafe1f0" # Ubuntu 22.04 LTS AMI
  instance_type = "t2.micro"
  subnet_id     = data.aws_subnet.default.id
  key_name      = "your-key" # Change to your AWS key

  tags = {
    Name = "Ansible-Master"
  }
}

resource "aws_instance" "jenkins_slave_1" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  subnet_id     = data.aws_subnet.default.id
  key_name      = "your-key"

  tags = {
    Name = "Jenkins-Slave-1"
  }
}

resource "aws_instance" "jenkins_slave_2" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  subnet_id     = data.aws_subnet.default.id
  key_name      = "your-key"

  tags = {
    Name = "Jenkins-Slave-2"
  }
}
