variable "oncall_on_call_shifts" {
  description = <<EOT
Map of oncall_on_call_shifts, attributes below
Required:
    - duration
    - name
    - start
    - type
Optional:
    - by_day
    - by_month
    - by_monthday
    - frequency
    - interval
    - level
    - rolling_users
    - start_rotation_from_user_index
    - team_id
    - time_zone
    - until
    - users
    - week_start
EOT

  type = map(object({
    duration                       = number
    name                           = string
    start                          = string
    type                           = string
    by_day                         = optional(set(string))
    by_month                       = optional(set(number))
    by_monthday                    = optional(set(number))
    frequency                      = optional(string)
    interval                       = optional(number)
    level                          = optional(number)
    rolling_users                  = optional(list(any))
    start_rotation_from_user_index = optional(number)
    team_id                        = optional(string)
    time_zone                      = optional(string)
    until                          = optional(string)
    users                          = optional(set(string))
    week_start                     = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.oncall_on_call_shifts : (
        length(v.name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.oncall_on_call_shifts : (
        length(v.start) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.oncall_on_call_shifts : (
        v.duration >= 0
      )
    ])
    error_message = "must be at least 0"
  }
  validation {
    condition = alltrue([
      for k, v in var.oncall_on_call_shifts : (
        v.until == null || (length(v.until) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.oncall_on_call_shifts : (
        v.interval == null || (v.interval >= 1)
      )
    ])
    error_message = "must be at least 1"
  }
  validation {
    condition = alltrue([
      for k, v in var.oncall_on_call_shifts : (
        v.by_month == null || (alltrue([for x in v.by_month : x >= 1 && x <= 12]))
      )
    ])
    error_message = "must be between 1 and 12"
  }
  validation {
    condition = alltrue([
      for k, v in var.oncall_on_call_shifts : (
        v.by_monthday == null || (alltrue([for x in v.by_monthday : x >= -31 && x <= 31]))
      )
    ])
    error_message = "must be between -31 and 31"
  }
  validation {
    condition = alltrue([
      for k, v in var.oncall_on_call_shifts : (
        v.time_zone == null || (length(v.time_zone) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.oncall_on_call_shifts : (
        v.start_rotation_from_user_index == null || (v.start_rotation_from_user_index >= 0)
      )
    ])
    error_message = "must be at least 0"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

