output "ami" {
  value = module.ec2-module.main-output
}

output "print-arn" {
  value = {for k, v in var.bucket-name :k=>k}

}
