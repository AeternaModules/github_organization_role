output "organization_roles_id" {
  description = "Map of id values across all organization_roles, keyed the same as var.organization_roles"
  value       = { for k, v in github_organization_role.organization_roles : k => v.id }
}
output "organization_roles_base_role" {
  description = "Map of base_role values across all organization_roles, keyed the same as var.organization_roles"
  value       = { for k, v in github_organization_role.organization_roles : k => v.base_role }
}
output "organization_roles_description" {
  description = "Map of description values across all organization_roles, keyed the same as var.organization_roles"
  value       = { for k, v in github_organization_role.organization_roles : k => v.description }
}
output "organization_roles_name" {
  description = "Map of name values across all organization_roles, keyed the same as var.organization_roles"
  value       = { for k, v in github_organization_role.organization_roles : k => v.name }
}
output "organization_roles_permissions" {
  description = "Map of permissions values across all organization_roles, keyed the same as var.organization_roles"
  value       = { for k, v in github_organization_role.organization_roles : k => v.permissions }
}
output "organization_roles_role_id" {
  description = "Map of role_id values across all organization_roles, keyed the same as var.organization_roles"
  value       = { for k, v in github_organization_role.organization_roles : k => v.role_id }
}

