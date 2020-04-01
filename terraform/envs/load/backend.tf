terraform {
  backend "s3" {
    bucket = "com.hapoon.load.tfstate"
    key    = "aws-infra"
    region = "ap-northeast-1"
  }
}
