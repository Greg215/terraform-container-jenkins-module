module "image" {
   source = "./image"
   image = "${lookup(var.image, var.env)}"
}

module "container" {
   source = "./container"
   name = "${lookup(var.name, var.env)}"
   image = "${module.image.image_out}"
   in_port = "${var.in_port}"
   out_port = "${lookup(var.out_port, var.env)}"
}
