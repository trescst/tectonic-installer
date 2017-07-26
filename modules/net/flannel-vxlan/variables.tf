variable "bootkube_id" {
  type = "string"
}

variable "flannel_image" {
  description = "Container image for flanneld"
  type        = "string"
}

variable "flannel_cni_image" {
  description = "Container image for flannel cni"
  type        = "string"
}

variable "cluster_cidr" {
  description = "A CIDR notation IP range from which to assign pod IPs"
  type        = "string"
}

variable "tectonic_container_overlay_network" {
  description = "The container overlay network that will be used"
  type        = "string"
}
