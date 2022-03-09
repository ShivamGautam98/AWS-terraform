# resource "aws_s3_bucket" "bucket_shivam98" {
#   bucket = "my-tf-test-bucket123-shivam"

#   tags = {
#     Name        = "My bucket"
#     Environment = "Dev"
#   }
# }

# resource "aws_s3_bucket_acl" "example" {
#   bucket = aws_s3_bucket.bucket_shivam98.id
#   acl    = "private"
# }