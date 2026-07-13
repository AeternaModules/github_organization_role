resource "github_organization_role" "organization_roles" {
  for_each = var.organization_roles

  name        = each.value.name
  permissions = each.value.permissions
  base_role   = each.value.base_role
  description = each.value.description
}

