terraform {
  backend "s3" {
    bucket = "myterraformbucket12"
    key    = "terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "my-terraform-state-lock1234"
  }
}
