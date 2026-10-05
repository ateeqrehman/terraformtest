terraform {
    required_providers {
        aws = {
            source ="hashicorp/aws"
            version = "~> 5.9.2"
        }
    }
    required_version = ">= 1.2"
}