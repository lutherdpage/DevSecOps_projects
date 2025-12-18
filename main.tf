provider "aws" {
  region = "eu-west-2" # London region
}
resource "aws_s3_bucket" "bucketluthertest" {
  bucket = "bucketluthertest"
}
terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "bucketluthertest"
    region         = "eu-west-2"
    key           = "CHANGE/terraform.tfstate"
  }
}
resource "aws_instance" "test6" {
  ami           = "ami-099400d52583dd8c4" # Replace with the desired Amazon Linux 2 AMI for eu-west-2 (bitnami image)
  instance_type = "t2.micro"  # Change to the desired instance type
  tags = {
    Name = "instance_luthertest"
}
}