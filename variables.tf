variable "pets" {
  type = map(object({
    length     = number
    prefix     = string
    separator = string
  }))
  validation {
    # Validate the length is greater than 0
    condition = alltrue([
      for v in var.pets : !(v.separator == "_") 
    ])
    error_message = "Underscore is not an allowed separator"
  }
}
