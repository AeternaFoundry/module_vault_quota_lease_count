variable "quota_lease_counts" {
  description = <<EOT
Map of quota_lease_counts, attributes below
Required:
    - max_leases
    - name
Optional:
    - inheritable
    - namespace
    - path
    - role
EOT

  type = map(object({
    max_leases  = number
    name        = string
    inheritable = optional(bool)
    namespace   = optional(string)
    path        = optional(string)
    role        = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.quota_lease_counts : (
        v.max_leases >= 0
      )
    ])
    error_message = "must be at least 0"
  }
}

