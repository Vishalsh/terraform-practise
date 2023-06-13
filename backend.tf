terraform {
  backend "s3" {
    bucket = "terraform-state-practise"
    key = "terraform-practise"
    region = "eu-central-1"
  }
}