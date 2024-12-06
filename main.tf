resource "local_file" "animals" {
filename = "raccoon.txt"
content = "This file (animals) has been created for the Terraform task to integrate terrafrom in jenkins using Terraform plugin."
}

resource "local_file" "my_pet" {
  filename = var.file_name[count.index]
  content  = "I like all kind of pets"
  count = length(var.file_name)
}

variable "file_name" {
    default = [
        "pets.txt",
        "cats.txt",
        "dogs.txt",
        "chameleon.txt"
    ]  
}

