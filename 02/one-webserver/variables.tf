#
# Input Variable 정의
#

variable "my_region" {
  description = "AWS My Region"
  type        = string
  default     = "us-east-2"
}

variable "my_ami_ubuntu2204" {
  description = "AWS MY AMI - Ubuntu 24.04 LTS"
  type        = string
  default     = "ami-0cfde0ea8edd312d4"
}

variable "my_instance_type" {
  description = "My ununtu instance type"
  type        = string
  default     = "t3.micro"
}

variable "my_userdata_changed" {
  description = "User data replace on chage"
  type        = bool
  default     = true
}

variable "my_webserver_tag" {
  description = "my webserver tags"
  type        = map(any)
  default = {
    Name = "mywebserver"
  }
}

variable "my_sg_tags" {
    description = "my security group tags"
    type = map(string)
    default = {
        Name = "allow_8080"
  }
}

variable "my_web_port" {
  description = "my webserver port"
  type = number
  default = 8080
}