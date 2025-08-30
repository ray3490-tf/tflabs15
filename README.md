# App Service demo (coalesce/try, tfvars-first)

Creates an **App Service Plan** + **Linux Web App** from per-environment `*.auto.tfvars`.
Defaults and overrides are composed in `locals.tf` using `coalesce(try(...), default)`.

## Run (example: production)
```bash
terraform init -backend-config=envs/production/backend.hcl
terraform plan   -var-file=envs/production/env.auto.tfvars   -var-file=envs/production/app.auto.tfvars
terraform apply -auto-approve
```
