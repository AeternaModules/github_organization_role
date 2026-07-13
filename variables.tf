variable "organization_roles" {
  description = <<EOT
Map of organization_roles, attributes below
Required:
    - name
    - permissions
Optional:
    - base_role
    - description
EOT

  type = map(object({
    name        = string
    permissions = set(string)
    base_role   = optional(string)
    description = optional(string)
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

