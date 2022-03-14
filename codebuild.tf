# resource "aws_kms_key" "example" {
#   description             = "my test kms key"
#   deletion_window_in_days = 7

#   policy = <<POLICY
# {
#   "Version": "2012-10-17",
#   "Id": "kms-tf-1",
#   "Statement": [
#     {
#       "Sid": "Enable IAM User Permissions",
#       "Effect": "Allow",
#       "Principal": {
#         "AWS": "*"
#       },
#       "Action": "kms:*",
#       "Resource": "*"
#     }
#   ]
# }
# POLICY
# }

# resource "aws_s3_bucket" "example" {
#   bucket = "shivam98-test"
# }

# resource "aws_codebuild_report_group" "example" {
#   name = "shivam98-group"
#   type = "TEST"

#   export_config {
#     type = "S3"

#     s3_destination {
#       bucket              = aws_s3_bucket.example.id
#       encryption_disabled = false
#       encryption_key      = aws_kms_key.example.arn
#       packaging           = "NONE"
#       path                = "/some"
#     }
#   }
# }