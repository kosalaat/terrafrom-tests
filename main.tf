resource "null_resource" "mynullresource" {
  triggers = {
    # plain dictionaries
    dict_name = var.dictionaries.name
    dict_age  = var.dictionaries.age

    # list of dicrs
    join_dic_name = join(",", var.list_of_objects.*.name)

    # list-of-strings
    join_list = join(",", var.list_of_strings.*)

    # testing boolean
    name = var.boolean ? var.dictionaries.name : var.list_of_objects[0].name

    # top level string
    sample_string = var.string_type

    # nested lists
    num_from_matrix = var.list_of_lists[1][2]
  }

}

# output "name" {

# }