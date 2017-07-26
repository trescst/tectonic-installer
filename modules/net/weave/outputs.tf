output "id" {
  value = "${ var.tectonic_container_overlay_network == "weave" ? "${sha1("${join(" ", local_file.weave.*.id)}")}" : "# weave disabled"}"
}

output "name" {
  value = "weave"
}
