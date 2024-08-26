resource "null_resource" "example" {
  provisioner "local-exec" {
    command = "echo 'This is a null resource example!'"
  }

  # You can use triggers to specify when the resource should be recreated
  triggers = {
    always_run = "${timestamp()}"
  }
}
