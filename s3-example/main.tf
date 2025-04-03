provider "aws" {
  region = "us-east-1" # Escolha a região da AWS
  shared_credentials_files = ["/runner/.aws/credentials"]
  profile                  = "default"
}

resource "aws_s3_bucket" "hello_bucket" {
  bucket = "meu-hello-world-bucket-123456" #Escolha um nome único
}

resource "aws_s3_object" "hello_file" {
  bucket  = aws_s3_bucket.hello_bucket.bucket
  key     = "hello-world.txt"
  content = "Hello, World from Terraform!"
}
