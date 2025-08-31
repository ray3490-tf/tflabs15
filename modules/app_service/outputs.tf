output "plan_id"         { 
    value = azurerm_service_plan.this.id 
}

output "web_app_id"      {
     value = azurerm_linux_web_app.this.id
}

output "default_hostname"{ 
    value = azurerm_linux_web_app.this.default_hostname 
}
