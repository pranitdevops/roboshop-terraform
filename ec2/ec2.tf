resource "aws_instance" "web" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t3.micro"
  vpc_security_group_ids= [aws_security_group.roboshop-all-aws.id]
  tags = {
    Name = "HelloWorld"
  }
}


resource "aws_security_group" "roboshop-all-aws" {
  name        = var.sg-name
  description = var.sg-description

  ingress {
    description = "Allow all ports"
    from_port   = 0
    to_port     = 0
    protocol    = "tcp"
    cidr_blocks = var.cidr_value
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "roboshop-all-aws"
  }
}