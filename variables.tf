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
    maximum_bytes_per_packet            = optional(number) # Default: 0
    maximum_bytes_per_session           = optional(number) # Default: 1073741824
    maximum_capture_duration_in_seconds = optional(number) # Default: 18000
    storage_location = object({
      file_path          = optional(string)
      storage_account_id = optional(string)
    })
    filter = optional(object({
      local_ip_address  = optional(string)
      local_port        = optional(string)
      protocol          = string
      remote_ip_address = optional(string)
      remote_port       = optional(string)
    }))
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
  # --- Unconfirmed validation candidates, derived from azurerm_virtual_machine_packet_capture's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: network_watcher_id
  #   source:    [from networkwatchers.ValidateNetworkWatcherID] !ok
  # path: network_watcher_id
  #   source:    [from networkwatchers.ValidateNetworkWatcherID] err != nil
  # path: virtual_machine_id
  #   source:    validation.Any(...) - no translation rule yet, add one
  # path: storage_location.file_path
  #   source:    [from networkValidate.FilePath] !regexp.MustCompile(`^(.)+.cap$`).MatchString(value)
  # path: storage_location.storage_account_id
  #   source:    [from commonids.ValidateStorageAccountID] !ok
  # path: storage_location.storage_account_id
  #   source:    [from commonids.ValidateStorageAccountID] err != nil
  # path: filter.protocol
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
}

