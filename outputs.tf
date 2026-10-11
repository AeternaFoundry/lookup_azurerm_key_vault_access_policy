output "key_vault_access_policy_lookup_id" {
  description = "Map of id values across all key_vault_access_policy_lookup, keyed the same as var.key_vault_access_policy_lookup"
  value       = { for k, v in data.azurerm_key_vault_access_policy.key_vault_access_policy_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "key_vault_access_policy_lookup_certificate_permissions" {
  description = "Map of certificate_permissions values across all key_vault_access_policy_lookup, keyed the same as var.key_vault_access_policy_lookup"
  value       = { for k, v in data.azurerm_key_vault_access_policy.key_vault_access_policy_lookup : k => v.certificate_permissions if v.certificate_permissions != null && length(v.certificate_permissions) > 0 }
}
output "key_vault_access_policy_lookup_key_permissions" {
  description = "Map of key_permissions values across all key_vault_access_policy_lookup, keyed the same as var.key_vault_access_policy_lookup"
  value       = { for k, v in data.azurerm_key_vault_access_policy.key_vault_access_policy_lookup : k => v.key_permissions if v.key_permissions != null && length(v.key_permissions) > 0 }
}
output "key_vault_access_policy_lookup_name" {
  description = "Map of name values across all key_vault_access_policy_lookup, keyed the same as var.key_vault_access_policy_lookup"
  value       = { for k, v in data.azurerm_key_vault_access_policy.key_vault_access_policy_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "key_vault_access_policy_lookup_secret_permissions" {
  description = "Map of secret_permissions values across all key_vault_access_policy_lookup, keyed the same as var.key_vault_access_policy_lookup"
  value       = { for k, v in data.azurerm_key_vault_access_policy.key_vault_access_policy_lookup : k => v.secret_permissions if v.secret_permissions != null && length(v.secret_permissions) > 0 }
}

