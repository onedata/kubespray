
resource "openstack_networking_router_v2" "k8s" {
  name             = "${var.cluster_name}-router"
  admin_state_up   = "true"
  external_gateway = "${var.external_net}"
  enable_snat      = "true" 
}

resource "opentelekomcloud_networking_network_v2" "k8s" {
  name           = "${var.network_name}"
  admin_state_up = "true"
}

resource "opentelekomcloud_networking_subnet_v2" "k8s" {
  name            = "${var.cluster_name}-internal-network"
  network_id      = "${opentelekomcloud_networking_network_v2.k8s.id}"
  cidr            = "10.0.0.0/24"
  ip_version      = 4
  dns_nameservers = "${var.dns_nameservers}"
}

resource "opentelekomcloud_networking_router_interface_v2" "k8s" {
  router_id = "${openstack_networking_router_v2.k8s.id}"
  subnet_id = "${opentelekomcloud_networking_subnet_v2.k8s.id}"
}
