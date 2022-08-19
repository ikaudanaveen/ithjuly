provider "aws" {

  region = "us-east-1"

}

resource "aws_instance" "aug19terra" {

  ami                    = "ami-090fa75af13c156b4"
  instance_type          = "t2.micro"
  availability_zone      = "us-east-1b"
  key_name               = "19aug_ith"
  vpc_security_group_ids = ["sg-0e64f8afb45e178ef"]
  tags = {
    "Name" = "19augterra"
  }

}
