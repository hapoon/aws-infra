terraform {
  backend "s3" {
    bucket = "com.hapoon.prd.tfstate"
    key    = "aws-infra"
    region = "ap-northeast-1"
  }
}
