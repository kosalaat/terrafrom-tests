resource "null_resource" "mynullresource" {
    triggers = {
        # plain dicte
        dict_name = var.dictionaries.name
        dict_age = var.dictionaries.age

        # list of dicrs
        join_dic_name = join(",", var.list-of-objects.*.name)

        # list-of-strings
        join_list = join(",", var.list-of-strings.*)

        # testing boolean
        name        =  var.boolean ?  var.dictionaries.name : var.list-of-objects[0].name

        # top level string
        sample_string = var.string-type
    }

}

# output "name" {

# }