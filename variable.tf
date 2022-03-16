variable "ami" {
  type = string
  description = "Provide ami of ec2 instance"
}

variable "instance-type" {
  type = string
  description = "Provide type of ec2 instance"
}

variable "tag-name" {
  type = string
  description = "Provide name for of ec2 instance"
}

variable "bucket-name" {
  type = set(string)
  description = "Provide s3 bucket name in list"
}

variable "bucket-tag" {
  type = string
  description = "Provide tag name for S3"
}

variable "iam" {
  type = set(string)
  description = "Provide iam name"
}