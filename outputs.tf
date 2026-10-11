output "security_monitoring_filters_id" {
  description = "Map of id values across all security_monitoring_filters, keyed the same as var.security_monitoring_filters except keys with no id are omitted"
  value       = { for k, v in datadog_security_monitoring_filter.security_monitoring_filters : k => v.id if v.id != null && length(v.id) > 0 }
}
output "security_monitoring_filters_exclusion_filter" {
  description = "Map of exclusion_filter values across all security_monitoring_filters, keyed the same as var.security_monitoring_filters except keys with no exclusion_filter are omitted"
  value       = { for k, v in datadog_security_monitoring_filter.security_monitoring_filters : k => v.exclusion_filter if v.exclusion_filter != null && length(v.exclusion_filter) > 0 }
}
output "security_monitoring_filters_filtered_data_type" {
  description = "Map of filtered_data_type values across all security_monitoring_filters, keyed the same as var.security_monitoring_filters except keys with no filtered_data_type are omitted"
  value       = { for k, v in datadog_security_monitoring_filter.security_monitoring_filters : k => v.filtered_data_type if v.filtered_data_type != null && length(v.filtered_data_type) > 0 }
}
output "security_monitoring_filters_is_enabled" {
  description = "Map of is_enabled values across all security_monitoring_filters, keyed the same as var.security_monitoring_filters except keys with no is_enabled are omitted"
  value       = { for k, v in datadog_security_monitoring_filter.security_monitoring_filters : k => v.is_enabled if v.is_enabled != null }
}
output "security_monitoring_filters_name" {
  description = "Map of name values across all security_monitoring_filters, keyed the same as var.security_monitoring_filters except keys with no name are omitted"
  value       = { for k, v in datadog_security_monitoring_filter.security_monitoring_filters : k => v.name if v.name != null && length(v.name) > 0 }
}
output "security_monitoring_filters_query" {
  description = "Map of query values across all security_monitoring_filters, keyed the same as var.security_monitoring_filters except keys with no query are omitted"
  value       = { for k, v in datadog_security_monitoring_filter.security_monitoring_filters : k => v.query if v.query != null && length(v.query) > 0 }
}
output "security_monitoring_filters_version" {
  description = "Map of version values across all security_monitoring_filters, keyed the same as var.security_monitoring_filters except keys with no version are omitted"
  value       = { for k, v in datadog_security_monitoring_filter.security_monitoring_filters : k => v.version if v.version != null }
}

