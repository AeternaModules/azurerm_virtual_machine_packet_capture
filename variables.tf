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
}

