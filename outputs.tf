output "organization_roles_id" {
  description = "Map of id values across all organization_roles, keyed the same as var.organization_roles"
  value       = { for k, v in github_organization_role.organization_roles : k => v.id if v.id != null && length(v.id) > 0 }
}
output "organization_roles_base_role" {
  description = "Map of base_role values across all organization_roles, keyed the same as var.organization_roles"
  value       = { for k, v in github_organization_role.organization_roles : k => v.base_role if v.base_role != null && length(v.base_role) > 0 }
}
output "organization_roles_description" {
  description = "Map of description values across all organization_roles, keyed the same as var.organization_roles"
  value       = { for k, v in github_organization_role.organization_roles : k => v.description if v.description != null && length(v.description) > 0 }
}
output "organization_roles_name" {
  description = "Map of name values across all organization_roles, keyed the same as var.organization_roles"
  value       = { for k, v in github_organization_role.organization_roles : k => v.name if v.name != null && length(v.name) > 0 }
}
output "organization_roles_permissions" {
  description = "Map of permissions values across all organization_roles, keyed the same as var.organization_roles"
  value       = { for k, v in github_organization_role.organization_roles : k => v.permissions if v.permissions != null && length(v.permissions) > 0 }
}
output "organization_roles_role_id" {
  description = "Map of role_id values across all organization_roles, keyed the same as var.organization_roles"
  value       = { for k, v in github_organization_role.organization_roles : k => v.role_id if v.role_id != null }
}

