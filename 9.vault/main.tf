provider "vault" {
  address = "http://172.31.45.188:8200"
  token   =  var.token_vault
  skip_tls_verify = true
  }
  variable "token_value" {}

  data "vault-kv-secret_v2" "example" {
      name = "my_credentials"
      mount= "test"
      }