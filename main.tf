resource "grafana_oncall_on_call_shift" "oncall_on_call_shifts" {
  for_each = var.oncall_on_call_shifts

  duration                       = each.value.duration
  name                           = each.value.name
  start                          = each.value.start
  type                           = each.value.type
  by_day                         = each.value.by_day
  by_month                       = each.value.by_month
  by_monthday                    = each.value.by_monthday
  frequency                      = each.value.frequency
  interval                       = each.value.interval
  level                          = each.value.level
  rolling_users                  = each.value.rolling_users
  start_rotation_from_user_index = each.value.start_rotation_from_user_index
  team_id                        = each.value.team_id
  time_zone                      = each.value.time_zone
  until                          = each.value.until
  users                          = each.value.users
  week_start                     = each.value.week_start
}

