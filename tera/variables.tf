variable "docker_flask_folder_path" {
  type        = string
  description = "Path of folder."
  default     = "./flaskApp/"
}
variable "image_name_flask" {
  type        = string
  description = "image name for flask app"
  default     = "flask"
}

variable "docker_loadbalancer_folder_path" {
  type        = list
  description = "path of haproxy folder"
  default     = ["./haproxy1/", "./haproxy2"]
}

variable "image_name" {
  type        = list
  description = "image name of haproxy"
  default     = ["haproxy1", "haproxy2"]
}

variable "name" {
  type        = list
  description = "container name of haproxy"
  default     = ["haproxy-1", "haproxy-2"]

}
