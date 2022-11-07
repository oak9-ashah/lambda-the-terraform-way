
resource "aws_s3_bucket" "lambda_tf_way_s3_bucket" {
  bucket = var.lambda_tf_way_s3_bucket
  acl = "private" # oak9: acl should be set to any of publicread, publicreadwrite, authenticateread
}

resource "aws_s3_account_public_access_block" "lambda_tf_way_s3_bucket_access" {
  ignore_public_acls = true
  block_public_acls = true
  block_public_policy = true
  restrict_public_buckets = true
}
