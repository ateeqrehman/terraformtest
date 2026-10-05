provider "aws" {
    region = "us-east-1"
}

resource "aws_instance"  "app_server" {
    ami = "ami-05b5ed9c0b125b39c"
    instance_type = "t2.micro"
    subnet_id = "subnet-01671def127cd6b43"
    associate_public_ip_address = false
    
    tags  = {
        Name = "testingbyAtee9"
    }

}
