variable "instance_names" {
  type    = list(string)
  default = ["frontend", "backend", "mysql"]
}

variable "common_tags" {
  default = {
    project = "expense"
    company  = "siritech"
    location = "berlin"
  }

}

variable "hostzone_id" {
  default = "Z0002129F7JN5W0O266T"
}