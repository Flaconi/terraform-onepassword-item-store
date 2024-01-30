resource "onepassword_item" "items" {
  for_each = { for parameter in var.items : parameter.name => parameter }
  vault    = var.vault_id

  category = each.value.category

  title = each.value.name

  username = each.value.username
  password = each.value.password

  tags = concat(var.tags_all, each.value.tags)
}
