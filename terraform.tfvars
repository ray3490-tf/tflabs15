webapp_environment = {
  "production" = {
    serviceplan={
        serviceplan500090={
            sku = "S1"
            os_type = "Windows"
        }
    }
    serviceapp={
        webapp5000040040 ="serviceplan500090"
#        StagingWebapp5000040080 ="serviceplan500090"

    }
    
  }
}

resource_tags = {
  "tags" = {
    department="Logistic"
    tier="Tier2"
    app="Office"
    costcenter="010"
    owner="Ramon"
  }
}

webapp_slot = [ "webapp5000040040","staging"  ]

