provider "aws" {
    region = "us-east-1"
}

resource "aws_instance"  "app_server" {
    ami = "ami-0dd074ed1ba7be3f9"
    instance_type = "t2.micro"
    subnet_id = "subnet-01671def127cd6b43"
    associate_public_ip_address = false
    
    tags  = {
        Name = "testingbyAtee6"
    }

}
