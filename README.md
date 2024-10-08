# terraform-onepassword-item-store

Module to store secrets in one password vaults

[![lint](https://github.com/flaconi/terraform-onepassword-item-store/workflows/lint/badge.svg)](https://github.com/flaconi/terraform-onepassword-item-store/actions?query=workflow%3Alint)
[![test](https://github.com/flaconi/terraform-onepassword-item-store/workflows/test/badge.svg)](https://github.com/flaconi/terraform-onepassword-item-store/actions?query=workflow%3Atest)
[![Tag](https://img.shields.io/github/tag/flaconi/terraform-onepassword-item-store.svg)](https://github.com/flaconi/terraform-onepassword-item-store/releases)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)

For requirements regarding module structure: [style-guide-terraform.md](https://github.com/Flaconi/devops-docs/blob/master/doc/conventions/style-guide-terraform.md)

<!-- TFDOCS_HEADER_START -->


<!-- TFDOCS_HEADER_END -->

<!-- TFDOCS_PROVIDER_START -->
## Providers

| Name | Version |
|------|---------|
| <a name="provider_onepassword"></a> [onepassword](#provider\_onepassword) | >= 2.1.0 |

<!-- TFDOCS_PROVIDER_END -->

<!-- TFDOCS_REQUIREMENTS_START -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5 |
| <a name="requirement_onepassword"></a> [onepassword](#requirement\_onepassword) | >= 2.1.0 |

<!-- TFDOCS_REQUIREMENTS_END -->

<!-- TFDOCS_INPUTS_START -->
## Required Inputs

The following input variables are required:

### <a name="input_vault_id"></a> [vault\_id](#input\_vault\_id)

Description: id of the vault where the items are stored

Type: `string`

## Optional Inputs

The following input variables are optional (have default values):

### <a name="input_items"></a> [items](#input\_items)

Description: A list of dicts with secret information

Type:

```hcl
list(object({
    category = optional(string, "login")
    name     = string
    username = string
    password = optional(string)
    url      = optional(string)
    tags     = optional(list(string), [])
    sections = optional(map(list(object({
      label = string
      type  = optional(string)
      value = optional(string)
    }))), {})
  }))
```

Default: `[]`

### <a name="input_tags_all"></a> [tags\_all](#input\_tags\_all)

Description: Tags applied to all the resources

Type: `list(string)`

Default: `[]`

<!-- TFDOCS_INPUTS_END -->

<!-- TFDOCS_OUTPUTS_START -->
## Outputs

No outputs.

<!-- TFDOCS_OUTPUTS_END -->

## License

**[MIT License](LICENSE)**

Copyright (c) 2024 **[Flaconi GmbH](https://github.com/flaconi)**
