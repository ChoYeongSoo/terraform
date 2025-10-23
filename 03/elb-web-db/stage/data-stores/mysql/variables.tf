variable "dbuser" {
    description = "the database user name"
    type = string
    sensitive = true
}

variable "dbpassword" {
    description = "the database user password"
    type = string
    sensitive = true
}