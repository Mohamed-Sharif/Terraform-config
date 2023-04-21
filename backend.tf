terraform {
  backend "s3" {
    bucket = "myterraformbucket12"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}