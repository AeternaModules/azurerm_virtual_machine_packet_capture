output "virtual_machine_packet_captures" {
  description = "All virtual_machine_packet_capture resources"
  value       = azurerm_virtual_machine_packet_capture.virtual_machine_packet_captures
}
output "virtual_machine_packet_captures_filter" {
  description = "List of filter values across all virtual_machine_packet_captures"
  value       = [for k, v in azurerm_virtual_machine_packet_capture.virtual_machine_packet_captures : v.filter]
}
output "virtual_machine_packet_captures_maximum_bytes_per_packet" {
  description = "List of maximum_bytes_per_packet values across all virtual_machine_packet_captures"
  value       = [for k, v in azurerm_virtual_machine_packet_capture.virtual_machine_packet_captures : v.maximum_bytes_per_packet]
}
output "virtual_machine_packet_captures_maximum_bytes_per_session" {
  description = "List of maximum_bytes_per_session values across all virtual_machine_packet_captures"
  value       = [for k, v in azurerm_virtual_machine_packet_capture.virtual_machine_packet_captures : v.maximum_bytes_per_session]
}
output "virtual_machine_packet_captures_maximum_capture_duration_in_seconds" {
  description = "List of maximum_capture_duration_in_seconds values across all virtual_machine_packet_captures"
  value       = [for k, v in azurerm_virtual_machine_packet_capture.virtual_machine_packet_captures : v.maximum_capture_duration_in_seconds]
}
output "virtual_machine_packet_captures_name" {
  description = "List of name values across all virtual_machine_packet_captures"
  value       = [for k, v in azurerm_virtual_machine_packet_capture.virtual_machine_packet_captures : v.name]
}
output "virtual_machine_packet_captures_network_watcher_id" {
  description = "List of network_watcher_id values across all virtual_machine_packet_captures"
  value       = [for k, v in azurerm_virtual_machine_packet_capture.virtual_machine_packet_captures : v.network_watcher_id]
}
output "virtual_machine_packet_captures_storage_location" {
  description = "List of storage_location values across all virtual_machine_packet_captures"
  value       = [for k, v in azurerm_virtual_machine_packet_capture.virtual_machine_packet_captures : v.storage_location]
}
output "virtual_machine_packet_captures_virtual_machine_id" {
  description = "List of virtual_machine_id values across all virtual_machine_packet_captures"
  value       = [for k, v in azurerm_virtual_machine_packet_capture.virtual_machine_packet_captures : v.virtual_machine_id]
}

