variable "context" {
    type = string
    default = "testTofuFile"
}

variable "location" {
    type = string
    default = "/tmp/gatewayTest.txt"
}

resource "local_file" "foo" {
    context = var.context
    filename = var.location
    file_permissions = 0644
}