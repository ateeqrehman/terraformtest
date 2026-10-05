provider "aws" {
    region = "us-east-1"
}

resource "aws_s3_bucket" "test" {
    bucket = "ateeq-terraformtest-secure-bucket-unique-suffix"
}

resource "aws_s3_bucket_policy" "enforce_ssl" {
 bucket = aws_s3_bucket.test.id
 policy = jsonencode(
    {
        Version = "2012-10-17"
        Statement = [
            {
            Sid = "DenyInsecure" 
            Effect = "Deny"
            Principal = "*"
            Action = "s3:*"
            Resource = [
                aws_s3_bucket.test.arn,
                "${aws_s3_bucket.test.arn}/*"
            ]
            Condition = {
                Bool = {
                    "aws:SecureTransport" = "false"
                }
            }
            }
        ]
    }
 )

}