provider "aws" {
  region     = "ap-south-1"
  access_key = var.access_key
  secret_key = var.secret_key
  #version    = "3.22"
}

resource "aws_instance" "ec2" {
  ami = "ami-08e0ca9924195beba"
  instance_type = "t2.nano"
  availability_zone = "ap-south-1b"

  tags = {
    Name = "ec2"
  }
}
