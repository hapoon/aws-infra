terraform {
  backend "s3" {
    bucket = "com.hapoon.stg.tfstate"
    key    = "aws-infra"
    region = "ap-northeast-1"
  }
}
