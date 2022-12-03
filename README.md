# Terraform-AzureRM-Module-Skeleton
Wrapper script to create a terraform module skeleton for Azure RM provider

Below structure will be created for a given module:

```bash
├── main.tf
├── variables.tf
├── providers.tf
└── versions.tf
├── outputs.tf
├── examples
│   └── basic-example
│       ├── main.tf
│       ├── outputs.tf
│       ├── terraform.locals.tfvars
│       └── variables.tf
├── README.md
├── LICENSE
```

# Usage

```bash
chmod +x generate-module-skeleton.sh
./generate-module-skeleton.sh
```
