output "virtual_machine_packet_captures_id" {
  description = "Map of id values across all virtual_machine_packet_captures, keyed the same as var.virtual_machine_packet_captures"
  value       = { for k, v in azurerm_virtual_machine_packet_capture.virtual_machine_packet_captures : k => v.id if v.id != null && length(v.id) > 0 }
}
output "virtual_machine_packet_captures_filter" {
  description = "Map of filter values across all virtual_machine_packet_captures, keyed the same as var.virtual_machine_packet_captures"
  value       = { for k, v in azurerm_virtual_machine_packet_capture.virtual_machine_packet_captures : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "virtual_machine_packet_captures_maximum_bytes_per_packet" {
  description = "Map of maximum_bytes_per_packet values across all virtual_machine_packet_captures, keyed the same as var.virtual_machine_packet_captures"
  value       = { for k, v in azurerm_virtual_machine_packet_capture.virtual_machine_packet_captures : k => v.maximum_bytes_per_packet if v.maximum_bytes_per_packet != null }
}
output "virtual_machine_packet_captures_maximum_bytes_per_session" {
  description = "Map of maximum_bytes_per_session values across all virtual_machine_packet_captures, keyed the same as var.virtual_machine_packet_captures"
  value       = { for k, v in azurerm_virtual_machine_packet_capture.virtual_machine_packet_captures : k => v.maximum_bytes_per_session if v.maximum_bytes_per_session != null }
}
output "virtual_machine_packet_captures_maximum_capture_duration_in_seconds" {
  description = "Map of maximum_capture_duration_in_seconds values across all virtual_machine_packet_captures, keyed the same as var.virtual_machine_packet_captures"
  value       = { for k, v in azurerm_virtual_machine_packet_capture.virtual_machine_packet_captures : k => v.maximum_capture_duration_in_seconds if v.maximum_capture_duration_in_seconds != null }
}
output "virtual_machine_packet_captures_name" {
  description = "Map of name values across all virtual_machine_packet_captures, keyed the same as var.virtual_machine_packet_captures"
  value       = { for k, v in azurerm_virtual_machine_packet_capture.virtual_machine_packet_captures : k => v.name if v.name != null && length(v.name) > 0 }
}
output "virtual_machine_packet_captures_network_watcher_id" {
  description = "Map of network_watcher_id values across all virtual_machine_packet_captures, keyed the same as var.virtual_machine_packet_captures"
  value       = { for k, v in azurerm_virtual_machine_packet_capture.virtual_machine_packet_captures : k => v.network_watcher_id if v.network_watcher_id != null && length(v.network_watcher_id) > 0 }
}
output "virtual_machine_packet_captures_storage_location" {
  description = "Map of storage_location values across all virtual_machine_packet_captures, keyed the same as var.virtual_machine_packet_captures"
  value       = { for k, v in azurerm_virtual_machine_packet_capture.virtual_machine_packet_captures : k => v.storage_location if v.storage_location != null && length(v.storage_location) > 0 }
}
output "virtual_machine_packet_captures_virtual_machine_id" {
  description = "Map of virtual_machine_id values across all virtual_machine_packet_captures, keyed the same as var.virtual_machine_packet_captures"
  value       = { for k, v in azurerm_virtual_machine_packet_capture.virtual_machine_packet_captures : k => v.virtual_machine_id if v.virtual_machine_id != null && length(v.virtual_machine_id) > 0 }
}

