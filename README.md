<!-- BEGIN_TF_DOCS -->
<!-- markdownlint-disable-file MD033 MD012 -->
# terraform-generic-easy-context
LederWorks Easy Context Module

This module were created by [LederWorks](https://lederworks.com) IaC enthusiasts.

## About This Module
This module implements a Context Store for Wonka's Sweet Companies

## How to Use This Modul
- Ensure Azure credentials are [in place](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs#authenticating-to-azure) (e.g. `az login` and `az account set --subscription="SUBSCRIPTION_ID"` on your workstation)
- Owner role or equivalent is required!
- Ensure pre-requisite resources are created.
- Create a Terraform configuration that pulls in this module and specifies values for the required variables.

## Requirements

The following requirements are needed by this module:

- <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) (>=1.3.6)

## Providers

No providers.

## Examples

### Example for Brussels Chocolate Factory
```hcl
# Module Test
module "context_choco_azure_dev" {
  source = "../.."

  #Common
  subsidiary  = "choco"
  cloud       = "azure"
  environment = "dev"
  region      = "northeurope"

  #General
  department = "sales"
  project    = "dark"
  tags = {
    OwnerContact = "wonka@choco.me"
    OwnerOU      = "choco"
    Sweetness    = "mild"
  }
  custom_tags = {
    HQ = "Brussels"
  }
}
output "context_choco_azure_dev" {
  value = module.context_choco_azure_dev.context
}
output "all_choco" {
  value = module.context_choco_azure_dev.all_choco
}
```

### Example for Cologne Candy Shop
```hcl
# Module Test
```

### Example for Istanbul Icecream Industries
```hcl
# Module Test
```

### Example for London Muffin Manufactures
```hcl
# Module Test
```

### Example for Amsterdam Waffel Works
```hcl
# Module Test
```

## Resources

No resources.

## Required Inputs

The following input variables are required:

### <a name="input_environment"></a> [environment](#input\_environment)

Description: Environment - place in the SDLC lifecycle

Type: `string`

### <a name="input_region"></a> [region](#input\_region)

Description: Cloud Region

Type: `string`

### <a name="input_tags"></a> [tags](#input\_tags)

Description: Mandatory resource tags. These tags take precendence over custom\_tags in case the same tag is duplicate.

Type:

```hcl
object({
    OwnerOU      = string
    OwnerContact = string
    Sweetness    = string
  })
```

## Optional Inputs

The following input variables are optional (have default values):

### <a name="input_cloud"></a> [cloud](#input\_cloud)

Description: Cloud Provider. Possible values are azure, aws, gcp, oci, onprem.

Type: `string`

Default: `"azure"`

### <a name="input_custom_tags"></a> [custom\_tags](#input\_custom\_tags)

Description: Custom Resource tags

Type: `map(any)`

Default: `{}`

### <a name="input_department"></a> [department](#input\_department)

Description: Department

Type: `string`

Default: `""`

### <a name="input_project"></a> [project](#input\_project)

Description: Project code

Type: `string`

Default: `""`

### <a name="input_subsidiary"></a> [subsidiary](#input\_subsidiary)

Description: Subsidiary

Type: `string`

Default: `"choco"`

## Outputs

The following outputs are exported:

### <a name="output_all_choco"></a> [all\_choco](#output\_all\_choco)

Description: Values for all Chocolate Factory environments

### <a name="output_cloud"></a> [cloud](#output\_cloud)

Description: Cloud Provider

### <a name="output_context"></a> [context](#output\_context)

Description: Context generated by input parameters

### <a name="output_environment"></a> [environment](#output\_environment)

Description: Environment

### <a name="output_project"></a> [project](#output\_project)

Description: Project Code

### <a name="output_region"></a> [region](#output\_region)

Description: Cloud Region

### <a name="output_subsidiary"></a> [subsidiary](#output\_subsidiary)

Description: Subsidiary Code

### <a name="output_tags"></a> [tags](#output\_tags)

Description: Resource Tags

<!-- markdownlint-disable-file MD033 MD012 -->
## Contributing

* If you think you've found a bug in the code or you have a question regarding
  the usage of this module, please reach out to us by opening an issue in
  this GitHub repository.
* Contributions to this project are welcome: if you want to add a feature or a
  fix a bug, please do so by opening a Pull Request in this GitHub repository.
  In case of feature contribution, we kindly ask you to open an issue to
  discuss it beforehand.

## License

```text
MIT License

Copyright (c) 2024 LederWorks

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
<!-- END_TF_DOCS -->