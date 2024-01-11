terraform {
  required_providers {
    onepassword = {
      source  = "1Password/onepassword"
      version = ">= 1.4.0"
    }
  }
  required_version = ">= 1.5"
}
