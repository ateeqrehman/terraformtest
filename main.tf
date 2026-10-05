provider "aws" {
    region = "us-east-1"
}

module "secure_bucket" {
    source = "./modules/secure_bucket"
    bucket_name = "test_bucket_by_ateeq"
}