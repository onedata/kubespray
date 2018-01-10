variable "cluster_name" {
  default = "example"
}

variable "number_of_bastions" {
  default = 1
}

variable "number_of_k8s_masters" {
  default = 2
}

variable "number_of_k8s_masters_no_etcd" {
  default = 2
}

variable "number_of_etcd" {
  default = 2
}

variable "number_of_k8s_masters_no_floating_ip" {
  default = 2
}

variable "number_of_k8s_masters_no_floating_ip_no_etcd" {
  default = 2
}

variable "number_of_k8s_nodes" {
  default = 1
}

variable "number_of_k8s_nodes_no_floating_ip" {
  default = 1
}

variable "number_of_gfs_nodes_no_floating_ip" {
  default = 0
}

variable "gfs_volume_size_in_gb" {
  default = 75
}

variable "public_key_path" {
  description = "The path of the ssh pub key"
  default = "~/.ssh/id_rsa.pub"
}

variable "image" {
  description = "the image to use"
  default = "Community_Ubuntu_16.04_TSI_latest"
}

variable "image_gfs" {
  description = "Glance image to use for GlusterFS"
  default = "Community_Ubuntu_16.04_TSI_latest"
}

variable "ssh_user" {
  description = "used to fill out tags for ansible inventory"
  default = "ubuntu"
}

variable "ssh_user_gfs" {
  description = "used to fill out tags for ansible inventory"
  default = "ubuntu"
}

variable "flavor_bastion" {
  description = "Use 'nova flavor-list' command to see what your Opentelekomcloud instance uses for IDs"
  default = "s1.xlarge"
}

variable "flavor_k8s_master" {
  description = "Use web ui command to see what your Opentelekomcloud instance uses for IDs"
  default = "h1.2xlarge.4"
}

variable "flavor_k8s_node" {
  description = "Useweb ui command to see what your Opentelekomcloud instance uses for IDs"
  default = "h1.8xlarge.8"
}

variable "flavor_etcd" {
  description = "Use web ui command to see what your Opentelekomcloud instance uses for IDs"
  default = "s1.xlarge"
}

variable "flavor_gfs_node" {
  description = "Use web ui command to see what your Opentelekomcloud instance uses for IDs"
  default = "s1.xlarge"
}

variable "network_name" {
  description = "name of the internal network to use"
  default = "example"
}

variable "dns_nameservers"{
  description = "An array of DNS name server names used by hosts in this subnet."
  type = "list"
  default = []
}

variable "floatingip_pool" {
  description = "name of the floating ip pool to use"
  default = "admin_external_net"
}

variable "external_net" {
  description = "uuid of the external/public network"
  default = "0a2228f2-7f8a-45f1-8e09-9039e1d09975"
}

variable "username" {
  description = "Your opentelekomcloud username"
}

variable "password" {
  description = "Your opentelekomcloud password"
}

variable "tenant_name" {
  description = "Your opentelekomcloud tenant/project"
  default = "eu-de_onedata"
}

variable "endpoint" {
  description = "Opentelekomcloud endpoint"
  default = "https://iam.eu-de.otc.t-systems.com:443/v3"
}

variable "domain_name" {
  # If you don't fill this in, you will be prompted for it
  #default = "your_domainname"
}