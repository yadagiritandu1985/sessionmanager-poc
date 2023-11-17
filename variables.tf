variable "aws_profile" {
  description = "AWS profile you wish to use from the config file"
  default     = "ytandu-sessionmanager-poc"
  type        = string
}

variable "aws_region" {
  description = "AWS region you wish to use to deploy the resource in"
  default     = "us-east-1"
  type        = string
}

variable "users" {
  description = "Map of AWS user profiles"
  type        = map(object({
    name       = string
    aws_region = string
    // Add other attributes if needed
  }))
}