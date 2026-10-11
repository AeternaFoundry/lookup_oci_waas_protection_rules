data "oci_waas_protection_rules" "waas_protection_rules_lookup" {
  for_each = var.waas_protection_rules_lookup

  waas_policy_id       = each.value.waas_policy_id
  action               = each.value.action
  mod_security_rule_id = each.value.mod_security_rule_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

