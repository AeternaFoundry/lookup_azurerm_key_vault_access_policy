data "azurerm_key_vault_access_policy" "key_vault_access_policy_lookup" {
  for_each = var.key_vault_access_policy_lookup

  name = each.value.name
}

