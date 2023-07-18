variable "pets" {
  type = map(object({
    length     = number
    prefix     = string
    separator = string
  }))
}
