terraform {
  required_providers {
    onepassword = {
      source  = "1Password/onepassword"
      version = ">= 2.1.0"
    }
  }
  required_version = ">= 1.5"
}
