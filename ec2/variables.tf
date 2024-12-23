variable "sg-name" {
type= string
default= "roboshop-all-aws"
}

variable "sg-description" {
type= string
default= "Allow TLS inbound traffic"
}

variable "cidr_value" {
type = list
default= ["0.0.0.0/0"]
}

