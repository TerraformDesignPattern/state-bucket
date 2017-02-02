resource "terraform_remote_state" "remote_state" {
  depends_on = ["aws_s3_bucket.s3_bucket"]
  backend = "s3"
  config {
    bucket = "terraform-state-${var.aws_account}"
    key = "global/terraform-state-bucket/terraform.tfstate"
    region = "us-east-1"
  }
}
