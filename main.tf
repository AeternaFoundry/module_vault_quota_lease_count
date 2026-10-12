resource "vault_quota_lease_count" "quota_lease_counts" {
  for_each = var.quota_lease_counts

  max_leases  = each.value.max_leases
  name        = each.value.name
  inheritable = each.value.inheritable
  namespace   = each.value.namespace
  path        = each.value.path
  role        = each.value.role
}

