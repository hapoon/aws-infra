terraform {
  backend "s3" {
    bucket = "com.hapoon.dev.tfstate"
    key    = "aws-infra"
    region = "ap-northeast-1"
  }
}
