### Terraform Modules Using Azure Cloud  provider
- A Terraform module is a collection of Terraform configuration files in a directory that work together to manage infrastructure. Modules help us reuse code, reduce duplication, and maintain consistent configurations across environments.

- For example, we can create a VNet module and reuse it for Dev, Test, and Production by passing different input values

## Basic Terraform Module Structure
```text
terraform-project/
├── main.tf
├── variables.tf
├── outputs.tf
├── providers.tf
└── modules/
    └── resource-group/
        ├── main.tf
        ├── variables.tf
        └── outputs.tf
```

### Root Module

- The root module is the directory where you run Terraform commands. It configures providers and calls child modules.

| File | Purpose |
|------|---------|
| `main.tf` | Calls child modules. |
| `variables.tf` | Defines input variables for the root module. |
| `outputs.tf` | Exposes values returned by child modules. |
| `providers.tf` | Defines provider requirements and configuration. |

### Child Module

- A child module contains reusable infrastructure code. In this example, it creates an Azure Resource Group.

| File | Purpose |
|------|---------|
| `main.tf` | Defines the resources to create. |
| `variables.tf` | Defines inputs accepted by the module. |
| `outputs.tf` | Returns resource values to the calling module. |

### Example: Calling the Child Module

- Add this block to the root module's `main.tf`:

```hcl
module "resource_group" {
  source = "./modules/resource-group"

  resource_group_name = var.resource_group_name
  location            = var.location
}
```

- The child module must declare `resource_group_name` and `location` in its `variables.tf`.

- versions.tf : its a file which declares the requuired terraform version and provider version.
- providers.tf : its a file which declares the required provider and its version.(Azure, AWS, GCP, etc.)

- Writing flow
- First you need to write the child modules then root modules
    - For child modules the files are(main.tf, Outputs.tf, variables.tf, versions.tf)[MOV2 -- In simple]
- Root Modules -  main.tf, Variables.tf outputs.tf, providers.tf

- After studying so much i realized one thing called. lets assume that we are going to cook two dishes called Biryani and Chicken and common ingredient is called salt. The same salt we will use in two dishes but amount may vary. 


- with Current files which we have we can create below resources by writing the Root modules
    - Resource Group
    - Virtual network
    - subnet
    - Azure container Registry
    - Azure Virtual Machine(Linux or windows)
    - Azure key vault
    - Azure app service plan
    - Azure webapp (either linux or windows)
    - Azure Storage account
    - Azure Load balancer
    - MS sql database
    - Azure kubernetes Cluster

### Learnings
- Differences between string, list(string) and map(sting) in variables.tf file

| Type | Meaning | Example | Terraform Use |
| --- | --- | --- | --- |
| `string` | One text value | `"my-resource-group"` | Resource group name, location |
| `list(string)` | An ordered collection of text values | `["10.0.1.0/24", "10.0.2.0/24"]` | Subnet address prefixes |
| `map(string)` | Key-value pairs where every value is text | `{ environment = "Dev", owner = "Lucky" }` | Resource tags |

- The input argument names in the root module’s module block must match the variable names declared in the child module.    