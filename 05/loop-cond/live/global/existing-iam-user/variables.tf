variable "user_names" {
    description = "create iam user name"
    type = list(string)
    default = [ "red", "blue", "green" ]
}