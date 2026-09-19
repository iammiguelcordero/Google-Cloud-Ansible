variable "project_config" {
  type = object({
    name   = string
    region = string
  })
}

variable "vm_config" {
    type = object({
      name = string
      zone = string
    })
}