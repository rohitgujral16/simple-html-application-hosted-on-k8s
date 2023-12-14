variable "s3-bucket-name" {
  default = "rohit-prod-terraform-static-bucket"
}

variable "aws-region" {
  default = "us-east-1"
}

variable "file-name" {
  default = "dynamic_string.txt"
}

variable "lambda-zip-filename" {
  default = "lambda_function.zip"
}

variable "gateway-api" {
  default = "my-api"
}

variable "suffix-path" {
  default = "resource"
}