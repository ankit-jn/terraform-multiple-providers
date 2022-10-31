###########################
# Common Variables
###########################
variable "default_tags" {
  description = "Tags applicable to all resources."
  type        = map(string)
  default     = {
    "Application"  = "Terraform Training"
    "Owning Team"  = "ARJStack"
    "Project Code" = "arjstack"
    "Run Time"     = "24/7"
    "Year Built"   = "2022"
  }
}

variable "env_tags" {
  description = "Tags specific to an environment."
  type        = map(string)
  default     = {
    "DC Location" = "Asia Pacific - Mumbai"
    "Environment" = "Training"
  }
}

###############################
# Http variables
###############################
variable "url" {
    type    = string
    default = "https://checkpoint-api.hashicorp.com/v1/check/terraform"
}