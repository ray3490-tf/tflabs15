variable "environment" { type = string }
variable "location"    { type = string }

variable "resource_groups" {
  description = "Resource groups by concern."
  type = object({
    workload = string
  })
}

variable "defaults" {
  description = "Environment defaults."
  type = object({
    plan_sku = string
    tags     = map(string)
  })
}

variable "webapp" {
  description = "Desired web app + plan (raw inputs; many are optional)."
  type = object({
    name                = string
    resource_group_name = optional(string)
    location            = optional(string)
    tags                = optional(map(string), {})

    plan = optional(object({
      name         = optional(string)
      sku_name     = optional(string)   # B1 | S1 | P1v3 ...
      os_type      = optional(string)   # Windows | Linux
      worker_count = optional(number)
    }), {})

    app_settings = optional(map(string), {})

    stack = optional(object({
      node_version = optional(string)   # e.g., "18-lts"
    }), {})

    https_only = optional(bool)
    always_on  = optional(bool)
  })
}
