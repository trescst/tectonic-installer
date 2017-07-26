data "template_file" "weave" {
  template = "${file("${path.module}/resources/manifests/kube-weave.yaml")}"

  vars {
    weave_image       = "${var.weave_image}"
    weave_npc_image   = "${var.weave_npc_image}"
    cluster_cidr      = "${var.cluster_cidr}"
    tectonic_container_overlay_network = "${var.tectonic_container_overlay_network}"

    bootkube_id = "${var.bootkube_id}"
  }
}

resource "local_file" "weave" {
  count = "${ var.tectonic_container_overlay_network == "weave" ? 1 : 0 }"

  content  = "${data.template_file.weave.rendered}"
  filename = "./generated/manifests/kube-weave.yaml"
}
