data "template_file" "flannel" {
  template = "${file("${path.module}/resources/manifests/kube-flannel.yaml")}"

  vars {
    flannel_image     = "${var.flannel_image}"
    flannel_cni_image = "${var.flannel_cni_image}"
    cluster_cidr      = "${var.cluster_cidr}"
    host_cni_bin      = "/var/lib/cni/bin"
    tectonic_container_overlay_network = "${var.tectonic_container_overlay_network}"

    bootkube_id = "${var.bootkube_id}"
  }
}

resource "local_file" "flannel" {
  count = "${ var.tectonic_container_overlay_network == "flannel" ? 1 : 0 }"

  content  = "${data.template_file.flannel.rendered}"
  filename = "./generated/manifests/kube-flannel.yaml"
}
