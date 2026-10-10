output "backup_vault_lock_configurations_id" {
  description = "Map of id values across all backup_vault_lock_configurations, keyed the same as var.backup_vault_lock_configurations"
  value       = { for k, v in aws_backup_vault_lock_configuration.backup_vault_lock_configurations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "backup_vault_lock_configurations_backup_vault_arn" {
  description = "Map of backup_vault_arn values across all backup_vault_lock_configurations, keyed the same as var.backup_vault_lock_configurations"
  value       = { for k, v in aws_backup_vault_lock_configuration.backup_vault_lock_configurations : k => v.backup_vault_arn if v.backup_vault_arn != null && length(v.backup_vault_arn) > 0 }
}
output "backup_vault_lock_configurations_backup_vault_name" {
  description = "Map of backup_vault_name values across all backup_vault_lock_configurations, keyed the same as var.backup_vault_lock_configurations"
  value       = { for k, v in aws_backup_vault_lock_configuration.backup_vault_lock_configurations : k => v.backup_vault_name if v.backup_vault_name != null && length(v.backup_vault_name) > 0 }
}
output "backup_vault_lock_configurations_changeable_for_days" {
  description = "Map of changeable_for_days values across all backup_vault_lock_configurations, keyed the same as var.backup_vault_lock_configurations"
  value       = { for k, v in aws_backup_vault_lock_configuration.backup_vault_lock_configurations : k => v.changeable_for_days if v.changeable_for_days != null }
}
output "backup_vault_lock_configurations_max_retention_days" {
  description = "Map of max_retention_days values across all backup_vault_lock_configurations, keyed the same as var.backup_vault_lock_configurations"
  value       = { for k, v in aws_backup_vault_lock_configuration.backup_vault_lock_configurations : k => v.max_retention_days if v.max_retention_days != null }
}
output "backup_vault_lock_configurations_min_retention_days" {
  description = "Map of min_retention_days values across all backup_vault_lock_configurations, keyed the same as var.backup_vault_lock_configurations"
  value       = { for k, v in aws_backup_vault_lock_configuration.backup_vault_lock_configurations : k => v.min_retention_days if v.min_retention_days != null }
}
output "backup_vault_lock_configurations_region" {
  description = "Map of region values across all backup_vault_lock_configurations, keyed the same as var.backup_vault_lock_configurations"
  value       = { for k, v in aws_backup_vault_lock_configuration.backup_vault_lock_configurations : k => v.region if v.region != null && length(v.region) > 0 }
}

