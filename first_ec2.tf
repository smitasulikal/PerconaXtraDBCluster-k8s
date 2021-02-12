provider "aws" {
  region     = "ap-south-1"
  #access_key = var.access_key
  #secret_key = var.secret_key
  access_key = "AKIAR7KC5EO5MK4G7OWP"
  secret_key = "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"
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
