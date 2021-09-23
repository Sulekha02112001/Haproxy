variable "docker_flask_folder_path" {
  type        = string
  description = "The id of the machine image (AMI) to use for the server."
  default     = "./flaskApp/"
}
variable "image_name_flask" {
  type        = string
  description = "The id of the machine image (AMI) to use for the server."
  default     = "flask"
}

variable "docker_loadbalancer_folder_path" {
  type        = list(any)
  description = "The id of the machine image (AMI) to use for the server."
  default     = ["./haproxy1/", "./haproxy2"]
}

variable "image_name" {
  type        = list(any)
  description = "The id of the machine image (AMI) to use for the server."
  default     = ["haproxy1", "haproxy2"]
}

variable "name" {
  type        = list(any)
  description = "value"
  default     = ["haproxy-1", "haproxy-2"]

}
