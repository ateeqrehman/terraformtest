provider "aws" {
    region = "us-east-1"
}

resource "aws_instance"  "app_server" {
    ami = "ami-0d27e0fb3bac4d724"
    instance_type = "t2.micro"
    subnet_id = "subnet-0e1271861be9bcf14"
    associate_public_ip_address = false
    
    tags  = {
        Name = "testingbyAtee9"
    }

}
