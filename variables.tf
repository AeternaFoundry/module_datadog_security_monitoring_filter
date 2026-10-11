variable "security_monitoring_filters" {
  description = <<EOT
Map of security_monitoring_filters, attributes below
Required:
    - is_enabled
    - name
    - query
Optional:
    - filtered_data_type
    - exclusion_filter (block):
        - name (required)
        - query (required)
EOT

  type = map(object({
    is_enabled         = bool
    name               = string
    query              = string
    filtered_data_type = optional(string)
    exclusion_filter = optional(list(object({
      name  = string
      query = string
    })))
  }))
}

