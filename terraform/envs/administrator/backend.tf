terraform {
  backend "s3" {
    bucket = "com.hapoon.tfstate"
    key    = "aws-infra-administrator"
    region = "ap-northeast-1"
  }
}
