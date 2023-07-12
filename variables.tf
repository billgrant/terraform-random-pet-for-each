variable "pets" {
    type = list(object({
        length  = number,
        prefix = string,
        sperarator = string,
    }))
}
