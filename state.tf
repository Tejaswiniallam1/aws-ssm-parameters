terraform {
  backend "s3" {
    bucket = "tejudevops77"
    key    = "aws-parameter-store/terraform.tfstate"
    region = "us-east-1"
  }
}
