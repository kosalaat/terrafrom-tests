variable "dictionaries" {
  type = object({
    name = string
    age  = number
  })
  description = "Same as ansible Dict"
  default = {
    age = 1
    name = "value"
  }
}

variable "list_of_strings" {
  type        = list(string)
  description = "list of strings"
}

variable "list_of_objects" {
  type = list(object({
    name = string
    age  = number
  }))

}

variable "boolean" {
  type        = bool
  description = "boolean"

}

variable "string_type" {
  type = string
  validation {
    condition     = (var.string_type == "randomstring2&$%@")
    error_message = "strings do not match."
  }
  default = "randomstring2&$%@"
}

variable "list_of_lists" {
  type = list(list(any))
  default = [ [ 1 ], [1, 2, 3], [3] ]
}