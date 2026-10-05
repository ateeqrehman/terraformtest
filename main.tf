provider "aws" {
    region = "us-east-1"
}

module "testsebucket" {
    source = "./modules/secure_bucket.tf"
    bucket_name = "test_bucket_by_ateeq"
}