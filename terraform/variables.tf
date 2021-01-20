variable "key_name" {
  default = "terraform-key"
}


variable "pvt_key" {
  default = "/root/.ssh/terraform-key.pem"
}


variable "sg_id" {
  default = "sg-0ad7599840e1c8348"
}
