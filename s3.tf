resource "aws_s3_bucket" "bucket_shivam98" {
  # checkov:skip=CKV_AWS_21: ADD REASON
  bucket = "my-tf-test-bucket123-shivam"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}


resource "aws_s3_bucket_versioning" "bucket_shivam98" {
  bucket = aws_s3_bucket.bucket_shivam98.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket" "destination" {
  bucket = aws_s3_bucket.bucket_shivam98.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_iam_role" "replication" {
  name               = "aws-iam-role"
  assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "s3.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
POLICY
}

resource "aws_s3_bucket_replication_configuration" "bucket_shivam98" {
  depends_on = [aws_s3_bucket_versioning.bucket_shivam98]
  role       = aws_iam_role.bucket_shivam98.arn
  bucket     = aws_s3_bucket.bucket_shivam98.id
  rule {
    id     = "foobar"
    status = "Enabled"
    destination {
      bucket        = aws_s3_bucket.destination.arn
      storage_class = "STANDARD"
    }
  }
}






resource "aws_s3_bucket" "bucket_shivam98_log_bucket" {
  bucket = "bucket_shivam98-log-bucket"
}

resource "aws_s3_bucket_logging" "bucket_shivam98" {
  bucket = aws_s3_bucket.bucket_shivam98.id

  target_bucket = aws_s3_bucket.bucket_shivam98_log_bucket.id
  target_prefix = "log/"
}






resource "aws_s3_bucket_server_side_encryption_configuration" "bucket_shivam98" {
  bucket = aws_s3_bucket.bucket_shivam98.bucket

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}




resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.bucket_shivam98.id
  acl    = "private"
}
