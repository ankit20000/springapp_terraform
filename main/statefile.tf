terraform {
  backend "s3" {
    bucket  = "sodaka-terraform-1748356475"
    key     = "infra.tfstate"
    region  = "ap-south-1"
    profile = "default"dynamodb_table = "vegeta-terraform-remote-state-table"
  }
}
