variable "region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "us-east-1"
}
variable "instance_type" {
  description = "The type of instance to use for the EC2 instance"
  default     = "t2.micro"
  type        = string
}
