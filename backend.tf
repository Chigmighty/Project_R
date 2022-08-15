terraform {
  backend "s3" {
    bucket   = "myenaj"
    key      = "myenaj.tfstate"
    dynamodb_table = "enaj-DB"
    region   = "us-east-1"
  }
}