resource "onepassword_item" "this" {
  for_each = { for parameter in var.items : parameter.name => parameter }
  vault    = var.vault_id

  category = each.value.category

  title = each.value.name

  username = each.value.username
  password = each.value.password
  url      = each.value.url

  dynamic "section" {
    for_each = each.value.sections
    content {
      label = section.key
      dynamic "field" {
        for_each = section.value
        content {
          label = field.value.label
          type  = field.value.type
          value = field.value.value
        }
      }
    }
  }

  tags = sort(concat(var.tags_all, each.value.tags))
}
