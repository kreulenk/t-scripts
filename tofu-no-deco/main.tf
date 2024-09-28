variable "content" {
    type = string
    default = "testTofuFile"
}

variable "location" {
    type = string
    default = "/tmp/gatewayTest.txt"
}

resource "local_file" "foo" {
    content = var.content
    filename = var.location
    file_permission = 0644
}