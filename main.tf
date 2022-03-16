provider "aws" {
  profile = "default"
  region  = "us-west-2"
}


module "ec2-module" {
  source = "./ec2-module" // you can also provide github path or local computer path 
  ami = var.ami
  instance-type = var.instance-type
  name-tag = var.tag-name
}

module "s3-module" {
  source = "./s3-module"
  for_each = var.bucket-name
  bucket_name = each.value
  bucket_tag = var.bucket-tag
  
}

module "iam-module" {
  source = "./iam"
  for_each = var.iam
  iam_name = each.value
}