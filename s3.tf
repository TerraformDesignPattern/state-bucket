resource "aws_s3_bucket" "s3_bucket" {
  bucket = "terraform-state-${var.aws_account}"
  acl = "private"
  versioning {
    enabled = true
  }
}
