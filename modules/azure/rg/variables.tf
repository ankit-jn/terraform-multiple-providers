variable "name" {
    type = string
}

variable "location" {
    description = "The location of the Resource Group"
    type        = string
}

variable "tags" {
    type = map(any)
}

