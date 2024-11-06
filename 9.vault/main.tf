provider "vault" {
  address = "http://172.31.45.188:8200"
  token   =  var.vault_token
  skip_tls_verify = true
  }
  variable "value_token" {}

  data "vault-kv-secret_v2" "example" {
      name = "my_credentials"
      mount= "test"
      }