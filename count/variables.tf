variable "instance_names" {
  type    = list(string)
  default = ["frontend", "backend", "mysql"]
}

variable "common_tags" {
  default = {
    company  = "siritech"
    location = "berlin"
  }

}