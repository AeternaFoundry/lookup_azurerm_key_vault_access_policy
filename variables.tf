variable "key_vault_access_policy_lookup" {
  description = <<EOT
Map of key_vault_access_policy_lookup, attributes below
Required:
    - name
EOT

  type = map(object({
    name = string
  }))
  validation {
    condition = alltrue([
      for k, v in var.key_vault_access_policy_lookup : (
        contains(["Key Management", "Secret Management", "Certificate Management", "Key & Secret Management", "Key & Certificate Management", "Secret & Certificate Management", "Key, Secret, & Certificate Management"], v.name)
      )
    ])
    error_message = "must be one of: Key Management, Secret Management, Certificate Management, Key & Secret Management, Key & Certificate Management, Secret & Certificate Management, Key, Secret, & Certificate Management"
  }
}

