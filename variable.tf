variable "env" {
  description = "env choose betwen dev or prod"
}

variable "name" {
  description = "Name of container"
  type        = "map"
}

variable "image" {
  description = "image for container"
  type        = "map"
}

variable "in_port" {
  description = "internal port for container"
  default     = "8080"
}

variable "out_port" {
  description = "external port for container"
  type        = "map"
}
