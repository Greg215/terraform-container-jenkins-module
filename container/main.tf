resource "docker_container" "jenkins" {
      name = "${var.name}"
      image = "${var.image}"
      ports {
         internal = "${var.in_port}" 
         external = "${var.out_port}"
      }
}
