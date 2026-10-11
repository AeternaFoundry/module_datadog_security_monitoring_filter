resource "datadog_security_monitoring_filter" "security_monitoring_filters" {
  for_each = var.security_monitoring_filters

  is_enabled         = each.value.is_enabled
  name               = each.value.name
  query              = each.value.query
  filtered_data_type = each.value.filtered_data_type

  dynamic "exclusion_filter" {
    for_each = each.value.exclusion_filter != null ? each.value.exclusion_filter : []
    content {
      name  = exclusion_filter.value.name
      query = exclusion_filter.value.query
    }
  }
}

