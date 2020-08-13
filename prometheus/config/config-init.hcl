"auto_auth" = {
  "method" = {
    "config" = {
      "role" = "prometheus"
    }
    "mount_path" = "auth/<yourpath>"
    "type" = "kubernetes"
  }
  "sink" = {
    "config" = {
      "path" = "/home/vault/.token"
    }
    "type" = "file"
  }
}
"exit_after_auth" = true
"pid_file" = "/home/vault/.pid"
"template" = {
  "source" = "/vault/configs/prometheus.yml"
  "destination" = "/vault/secrets/prometheus.yml"
}

"vault" = {
  "address" = "http://vault.vault.svc:8200"
  "ca_cert" = "/vault/tls/ca.crt"
  "client_cert" = "/vault/tls/tls.crt"
  "client_key" = "/vault/tls/tls.key"
}