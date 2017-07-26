output "id" {
  value = "${ var.tectonic_container_overlay_network == "flannel" ? "${sha1("${join(" ", local_file.flannel.*.id)}")}" : "# flannel disabled"}"
}

output "name" {
  value = "flannel-vxlan"
}
