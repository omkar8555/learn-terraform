token   =  var.vault_token
  skip_tls_verify = true
  }

  variable "vault_token" {}

  data "vault_generic_secret" "example" {
    path = "test/my_credentials"
  }



  resource "local_file" "foo" {
    content  = data.vault_generic_secret.example.data["password"]
    filename = "/tmp/secret"
  }