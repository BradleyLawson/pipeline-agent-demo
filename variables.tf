variable "tags" {
  description = "A map of the tags to use for the resources that are deployed"
  type        = map(string)

  default = {
    createdby = "bdl"
  }
}

variable "location" {
  type = string
  description = "The location where resources will be created"
  default     = "eastus"
}