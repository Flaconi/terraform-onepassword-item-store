variable "tags" {
  description = "Tags applied to the resources"
  type        = list(string)
  default     = []
}

variable "vault_id" {
  description = "id of the vault where the items are stored"
  type        = string
}

variable "items" {
  description = "A list of dicts with secret information"
  type = list(object({
    category = optional(string, "login")
    name     = string
    username = string
    password = string
  }))
  default = []
}
