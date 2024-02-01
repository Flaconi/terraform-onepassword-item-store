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
    url      = optional(string)
    tags     = optional(list(string), [])
  }))
  default = []
}

variable "tags_all" {
  description = "Tags applied to all the resources"
  type        = list(string)
  default     = []
}
