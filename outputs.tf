output "waas_protection_rules_lookup_id" {
  description = "Map of id values across all waas_protection_rules_lookup, keyed the same as var.waas_protection_rules_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_waas_protection_rules.waas_protection_rules_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "waas_protection_rules_lookup_action" {
  description = "Map of action values across all waas_protection_rules_lookup, keyed the same as var.waas_protection_rules_lookup except keys with no action are omitted"
  value       = { for k, v in data.oci_waas_protection_rules.waas_protection_rules_lookup : k => v.action if v.action != null && length(v.action) > 0 }
}
output "waas_protection_rules_lookup_filter" {
  description = "Map of filter values across all waas_protection_rules_lookup, keyed the same as var.waas_protection_rules_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_waas_protection_rules.waas_protection_rules_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "waas_protection_rules_lookup_mod_security_rule_id" {
  description = "Map of mod_security_rule_id values across all waas_protection_rules_lookup, keyed the same as var.waas_protection_rules_lookup except keys with no mod_security_rule_id are omitted"
  value       = { for k, v in data.oci_waas_protection_rules.waas_protection_rules_lookup : k => v.mod_security_rule_id if v.mod_security_rule_id != null && length(v.mod_security_rule_id) > 0 }
}
output "waas_protection_rules_lookup_protection_rules" {
  description = "Map of protection_rules values across all waas_protection_rules_lookup, keyed the same as var.waas_protection_rules_lookup except keys with no protection_rules are omitted"
  value       = { for k, v in data.oci_waas_protection_rules.waas_protection_rules_lookup : k => v.protection_rules if v.protection_rules != null && length(v.protection_rules) > 0 }
}
output "waas_protection_rules_lookup_waas_policy_id" {
  description = "Map of waas_policy_id values across all waas_protection_rules_lookup, keyed the same as var.waas_protection_rules_lookup except keys with no waas_policy_id are omitted"
  value       = { for k, v in data.oci_waas_protection_rules.waas_protection_rules_lookup : k => v.waas_policy_id if v.waas_policy_id != null && length(v.waas_policy_id) > 0 }
}

