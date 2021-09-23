resource "docker_image" "building_flask_image" {
  name = "flask"
  build {
    path = var.docker_flask_folder_path
    tag  = [var.image_name_flask]

  }
}

resource "docker_container" "flask_container" {
  depends_on = [docker_image.building_flask_image]
  count      = 4
  name       = "APP-${count.index + 1}"
  image      = var.image_name_flask
  ports {
    internal = 5001
    external = "3200${count.index + 1}"
  }
}

resource "docker_image" "building_haproxy_image" {
  count = 2
  name  = "haproxy${count.index + 1}"
  build {
    path = var.docker_loadbalancer_folder_path["${count.index}"]
    tag  = [var.image_name["${count.index}"]]

  }
}

resource "docker_container" "haproxy_container" {
  count      = 2
  depends_on = [docker_image.building_haproxy_image]
  name       = var.name["${count.index}"]
  image      = var.image_name["${count.index}"]
  ports {
    internal = 80
    external = "8${count.index}"
  }
}
