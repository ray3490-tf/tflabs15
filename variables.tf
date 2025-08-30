variable "webapp_environment" {
    type = map(object(
        {
            serviceplan=map(object(
                {
                    sku=string
                    os_type=string
                }
            ))
            serviceapp=map(string)
        }
    ))
}

variable "resource_tags" {
  type=map(object(
    {
        department=string
        tier=string
        app=string
        costcenter=string
        owner=string
    }
  ))
}

variable "webapp_slot" {
    type=list(string)
}
