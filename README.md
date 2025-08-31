# App Service demo 

Creates an **App Service Plan** + **Linux Web App** from per-environment `*.tfvars`.
Defaults and overrides are composed in `locals.tf` using `coalesce(try(...), default)`.

## Run (example: production)
```bash
terraform init -backend-config=envs/production/backend.hcl
terraform plan   -var-file=envs/production/env.tfvars   -var-file=envs/production/app.tfvars
terraform apply -auto-approve
```
