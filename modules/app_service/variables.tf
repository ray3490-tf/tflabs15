variable "app" {
  description = "Normalized app + plan object."
  type = object({
    name = string
    rg   = string
    loc  = string

    plan = object({
      name         = string
      sku_name     = string
      os_type      = string
      worker_count = number
    })

    app_settings = map(string)

    stack = object({
      node_version = string
    })

    https_only = bool
    always_on  = bool
    tags       = map(string)
  })
}
