output "router_id" {
    value = "${opentelekomcloud_networking_router_interface_v2.k8s.id}"
}

output "network_id" {
    value = "${opentelekomcloud_networking_subnet_v2.k8s.id}"
}
