variable "waas_protection_rules_lookup" {
  description = <<EOT
Map of waas_protection_rules_lookup, attributes below
Required:
    - waas_policy_id
Optional:
    - action
    - mod_security_rule_id
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    waas_policy_id       = string
    action               = optional(list(string))
    mod_security_rule_id = optional(list(string))
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

