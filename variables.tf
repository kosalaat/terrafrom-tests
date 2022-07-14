variable "dictionaries" {
    type = object({
        name    = string
        age     = number
    })
    description = "Same as ansible Dict"
}

variable "list-of-strings" {
    type        = list (string)
    description = "list of strings"
}


variable "list-of-objects" {
    type = list(object({
        name    = string
        age     = number
    }))
}

variable "boolean" {
    type        = bool
    description = "boolean"

}

variable "string-type" {
    type        = string 
}