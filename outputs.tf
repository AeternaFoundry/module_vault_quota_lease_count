output "quota_lease_counts_id" {
  description = "Map of id values across all quota_lease_counts, keyed the same as var.quota_lease_counts except keys with no id are omitted"
  value       = { for k, v in vault_quota_lease_count.quota_lease_counts : k => v.id if v.id != null && length(v.id) > 0 }
}
output "quota_lease_counts_inheritable" {
  description = "Map of inheritable values across all quota_lease_counts, keyed the same as var.quota_lease_counts except keys with no inheritable are omitted"
  value       = { for k, v in vault_quota_lease_count.quota_lease_counts : k => v.inheritable if v.inheritable != null }
}
output "quota_lease_counts_max_leases" {
  description = "Map of max_leases values across all quota_lease_counts, keyed the same as var.quota_lease_counts except keys with no max_leases are omitted"
  value       = { for k, v in vault_quota_lease_count.quota_lease_counts : k => v.max_leases if v.max_leases != null }
}
output "quota_lease_counts_name" {
  description = "Map of name values across all quota_lease_counts, keyed the same as var.quota_lease_counts except keys with no name are omitted"
  value       = { for k, v in vault_quota_lease_count.quota_lease_counts : k => v.name if v.name != null && length(v.name) > 0 }
}
output "quota_lease_counts_namespace" {
  description = "Map of namespace values across all quota_lease_counts, keyed the same as var.quota_lease_counts except keys with no namespace are omitted"
  value       = { for k, v in vault_quota_lease_count.quota_lease_counts : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "quota_lease_counts_path" {
  description = "Map of path values across all quota_lease_counts, keyed the same as var.quota_lease_counts except keys with no path are omitted"
  value       = { for k, v in vault_quota_lease_count.quota_lease_counts : k => v.path if v.path != null && length(v.path) > 0 }
}
output "quota_lease_counts_role" {
  description = "Map of role values across all quota_lease_counts, keyed the same as var.quota_lease_counts except keys with no role are omitted"
  value       = { for k, v in vault_quota_lease_count.quota_lease_counts : k => v.role if v.role != null && length(v.role) > 0 }
}

