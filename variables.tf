##General vars
variable "ssh_user" {
  default = "ubuntu"
}
variable "public_key_path" {
  default = "<key-path>"
}
##AWS Specific Vars
variable "aws_worker_count" {
  default = 2
}
variable "aws_key_name" {
  default = "<key-name>"
}
variable "aws_instance_size" {
  default = "t2.micro"
}
variable "aws_region" {
  default = "us-east-2"
}
