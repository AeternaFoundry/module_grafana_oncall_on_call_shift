output "oncall_on_call_shifts_id" {
  description = "Map of id values across all oncall_on_call_shifts, keyed the same as var.oncall_on_call_shifts except keys with no id are omitted"
  value       = { for k, v in grafana_oncall_on_call_shift.oncall_on_call_shifts : k => v.id if v.id != null && length(v.id) > 0 }
}
output "oncall_on_call_shifts_by_day" {
  description = "Map of by_day values across all oncall_on_call_shifts, keyed the same as var.oncall_on_call_shifts except keys with no by_day are omitted"
  value       = { for k, v in grafana_oncall_on_call_shift.oncall_on_call_shifts : k => v.by_day if v.by_day != null && length(v.by_day) > 0 }
}
output "oncall_on_call_shifts_by_month" {
  description = "Map of by_month values across all oncall_on_call_shifts, keyed the same as var.oncall_on_call_shifts except keys with no by_month are omitted"
  value       = { for k, v in grafana_oncall_on_call_shift.oncall_on_call_shifts : k => v.by_month if v.by_month != null && length(v.by_month) > 0 }
}
output "oncall_on_call_shifts_by_monthday" {
  description = "Map of by_monthday values across all oncall_on_call_shifts, keyed the same as var.oncall_on_call_shifts except keys with no by_monthday are omitted"
  value       = { for k, v in grafana_oncall_on_call_shift.oncall_on_call_shifts : k => v.by_monthday if v.by_monthday != null && length(v.by_monthday) > 0 }
}
output "oncall_on_call_shifts_duration" {
  description = "Map of duration values across all oncall_on_call_shifts, keyed the same as var.oncall_on_call_shifts except keys with no duration are omitted"
  value       = { for k, v in grafana_oncall_on_call_shift.oncall_on_call_shifts : k => v.duration if v.duration != null }
}
output "oncall_on_call_shifts_frequency" {
  description = "Map of frequency values across all oncall_on_call_shifts, keyed the same as var.oncall_on_call_shifts except keys with no frequency are omitted"
  value       = { for k, v in grafana_oncall_on_call_shift.oncall_on_call_shifts : k => v.frequency if v.frequency != null && length(v.frequency) > 0 }
}
output "oncall_on_call_shifts_interval" {
  description = "Map of interval values across all oncall_on_call_shifts, keyed the same as var.oncall_on_call_shifts except keys with no interval are omitted"
  value       = { for k, v in grafana_oncall_on_call_shift.oncall_on_call_shifts : k => v.interval if v.interval != null }
}
output "oncall_on_call_shifts_level" {
  description = "Map of level values across all oncall_on_call_shifts, keyed the same as var.oncall_on_call_shifts except keys with no level are omitted"
  value       = { for k, v in grafana_oncall_on_call_shift.oncall_on_call_shifts : k => v.level if v.level != null }
}
output "oncall_on_call_shifts_name" {
  description = "Map of name values across all oncall_on_call_shifts, keyed the same as var.oncall_on_call_shifts except keys with no name are omitted"
  value       = { for k, v in grafana_oncall_on_call_shift.oncall_on_call_shifts : k => v.name if v.name != null && length(v.name) > 0 }
}
output "oncall_on_call_shifts_rolling_users" {
  description = "Map of rolling_users values across all oncall_on_call_shifts, keyed the same as var.oncall_on_call_shifts except keys with no rolling_users are omitted"
  value       = { for k, v in grafana_oncall_on_call_shift.oncall_on_call_shifts : k => v.rolling_users if v.rolling_users != null && length(v.rolling_users) > 0 }
}
output "oncall_on_call_shifts_start" {
  description = "Map of start values across all oncall_on_call_shifts, keyed the same as var.oncall_on_call_shifts except keys with no start are omitted"
  value       = { for k, v in grafana_oncall_on_call_shift.oncall_on_call_shifts : k => v.start if v.start != null && length(v.start) > 0 }
}
output "oncall_on_call_shifts_start_rotation_from_user_index" {
  description = "Map of start_rotation_from_user_index values across all oncall_on_call_shifts, keyed the same as var.oncall_on_call_shifts except keys with no start_rotation_from_user_index are omitted"
  value       = { for k, v in grafana_oncall_on_call_shift.oncall_on_call_shifts : k => v.start_rotation_from_user_index if v.start_rotation_from_user_index != null }
}
output "oncall_on_call_shifts_team_id" {
  description = "Map of team_id values across all oncall_on_call_shifts, keyed the same as var.oncall_on_call_shifts except keys with no team_id are omitted"
  value       = { for k, v in grafana_oncall_on_call_shift.oncall_on_call_shifts : k => v.team_id if v.team_id != null && length(v.team_id) > 0 }
}
output "oncall_on_call_shifts_time_zone" {
  description = "Map of time_zone values across all oncall_on_call_shifts, keyed the same as var.oncall_on_call_shifts except keys with no time_zone are omitted"
  value       = { for k, v in grafana_oncall_on_call_shift.oncall_on_call_shifts : k => v.time_zone if v.time_zone != null && length(v.time_zone) > 0 }
}
output "oncall_on_call_shifts_type" {
  description = "Map of type values across all oncall_on_call_shifts, keyed the same as var.oncall_on_call_shifts except keys with no type are omitted"
  value       = { for k, v in grafana_oncall_on_call_shift.oncall_on_call_shifts : k => v.type if v.type != null && length(v.type) > 0 }
}
output "oncall_on_call_shifts_until" {
  description = "Map of until values across all oncall_on_call_shifts, keyed the same as var.oncall_on_call_shifts except keys with no until are omitted"
  value       = { for k, v in grafana_oncall_on_call_shift.oncall_on_call_shifts : k => v.until if v.until != null && length(v.until) > 0 }
}
output "oncall_on_call_shifts_users" {
  description = "Map of users values across all oncall_on_call_shifts, keyed the same as var.oncall_on_call_shifts except keys with no users are omitted"
  value       = { for k, v in grafana_oncall_on_call_shift.oncall_on_call_shifts : k => v.users if v.users != null && length(v.users) > 0 }
}
output "oncall_on_call_shifts_week_start" {
  description = "Map of week_start values across all oncall_on_call_shifts, keyed the same as var.oncall_on_call_shifts except keys with no week_start are omitted"
  value       = { for k, v in grafana_oncall_on_call_shift.oncall_on_call_shifts : k => v.week_start if v.week_start != null && length(v.week_start) > 0 }
}

