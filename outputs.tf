output "virtual_machine_packet_captures_id" {
  description = "Map of id values across all virtual_machine_packet_captures, keyed the same as var.virtual_machine_packet_captures"
  value       = { for k, v in azurerm_virtual_machine_packet_capture.virtual_machine_packet_captures : k => v.id }
}
output "virtual_machine_packet_captures_filter" {
  description = "Map of filter values across all virtual_machine_packet_captures, keyed the same as var.virtual_machine_packet_captures"
  value       = { for k, v in azurerm_virtual_machine_packet_capture.virtual_machine_packet_captures : k => v.filter }
}
output "virtual_machine_packet_captures_maximum_bytes_per_packet" {
  description = "Map of maximum_bytes_per_packet values across all virtual_machine_packet_captures, keyed the same as var.virtual_machine_packet_captures"
  value       = { for k, v in azurerm_virtual_machine_packet_capture.virtual_machine_packet_captures : k => v.maximum_bytes_per_packet }
}
output "virtual_machine_packet_captures_maximum_bytes_per_session" {
  description = "Map of maximum_bytes_per_session values across all virtual_machine_packet_captures, keyed the same as var.virtual_machine_packet_captures"
  value       = { for k, v in azurerm_virtual_machine_packet_capture.virtual_machine_packet_captures : k => v.maximum_bytes_per_session }
}
output "virtual_machine_packet_captures_maximum_capture_duration_in_seconds" {
  description = "Map of maximum_capture_duration_in_seconds values across all virtual_machine_packet_captures, keyed the same as var.virtual_machine_packet_captures"
  value       = { for k, v in azurerm_virtual_machine_packet_capture.virtual_machine_packet_captures : k => v.maximum_capture_duration_in_seconds }
}
output "virtual_machine_packet_captures_name" {
  description = "Map of name values across all virtual_machine_packet_captures, keyed the same as var.virtual_machine_packet_captures"
  value       = { for k, v in azurerm_virtual_machine_packet_capture.virtual_machine_packet_captures : k => v.name }
}
output "virtual_machine_packet_captures_network_watcher_id" {
  description = "Map of network_watcher_id values across all virtual_machine_packet_captures, keyed the same as var.virtual_machine_packet_captures"
  value       = { for k, v in azurerm_virtual_machine_packet_capture.virtual_machine_packet_captures : k => v.network_watcher_id }
}
output "virtual_machine_packet_captures_storage_location" {
  description = "Map of storage_location values across all virtual_machine_packet_captures, keyed the same as var.virtual_machine_packet_captures"
  value       = { for k, v in azurerm_virtual_machine_packet_capture.virtual_machine_packet_captures : k => v.storage_location }
}
output "virtual_machine_packet_captures_virtual_machine_id" {
  description = "Map of virtual_machine_id values across all virtual_machine_packet_captures, keyed the same as var.virtual_machine_packet_captures"
  value       = { for k, v in azurerm_virtual_machine_packet_capture.virtual_machine_packet_captures : k => v.virtual_machine_id }
}

