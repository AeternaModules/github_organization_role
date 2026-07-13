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
  # --- Unconfirmed validation candidates, derived from github_organization_role's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: base_role
  #   source:    validateValueFunc: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
}

