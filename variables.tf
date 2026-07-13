variable "virtual_machine_packet_captures" {
  description = <<EOT
Map of virtual_machine_packet_captures, attributes below
Required:
    - name
    - network_watcher_id
    - virtual_machine_id
    - storage_location (block):
        - file_path (optional)
        - storage_account_id (optional)
Optional:
    - maximum_bytes_per_packet
    - maximum_bytes_per_session
    - maximum_capture_duration_in_seconds
    - filter (block):
        - local_ip_address (optional)
        - local_port (optional)
        - protocol (required)
        - remote_ip_address (optional)
        - remote_port (optional)
EOT

  type = map(object({
    name                                = string
    network_watcher_id                  = string
    virtual_machine_id                  = string
    maximum_bytes_per_packet            = optional(number)
    maximum_bytes_per_session           = optional(number)
    maximum_capture_duration_in_seconds = optional(number)
    storage_location = object({
      file_path          = optional(string)
      storage_account_id = optional(string)
    })
    filter = optional(list(object({
      local_ip_address  = optional(string)
      local_port        = optional(string)
      protocol          = string
      remote_ip_address = optional(string)
      remote_port       = optional(string)
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.virtual_machine_packet_captures : (
        length(v.name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.virtual_machine_packet_captures : (
        v.maximum_capture_duration_in_seconds == null || (v.maximum_capture_duration_in_seconds >= 1 && v.maximum_capture_duration_in_seconds <= 18000)
      )
    ])
    error_message = "must be between 1 and 18000"
  }
  # Note: 7 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

