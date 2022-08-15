variable "stack" {
  description = "Name of the stack."
  default     = "Dev"
}

variable "vpc_cidr" {
  default = "172.0.0.0/16"
}