variable "backup_vault_lock_configurations" {
  description = <<EOT
Map of backup_vault_lock_configurations, attributes below
Required:
    - backup_vault_name
Optional:
    - changeable_for_days
    - max_retention_days
    - min_retention_days
    - region
EOT

  type = map(object({
    backup_vault_name   = string
    changeable_for_days = optional(number)
    max_retention_days  = optional(number)
    min_retention_days  = optional(number)
    region              = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.backup_vault_lock_configurations : (
        can(regex("^[0-9A-Za-z_.-]{1,50}$", v.backup_vault_name))
      )
    ])
    error_message = "must consist of lowercase letters, numbers, and hyphens."
  }
  validation {
    condition = alltrue([
      for k, v in var.backup_vault_lock_configurations : (
        v.changeable_for_days == null || (v.changeable_for_days >= 3)
      )
    ])
    error_message = "must be at least 3"
  }
}

