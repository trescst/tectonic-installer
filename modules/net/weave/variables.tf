variable "bootkube_id" {
  type = "string"
}

variable "weave_image" {
  description = "Container image for weave"
  type        = "string"
}

variable "weave_npc_image" {
  description = "Container image for weave npc"
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
