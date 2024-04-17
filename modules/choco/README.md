<!-- BEGIN_TF_DOCS -->
<!-- markdownlint-disable-file MD033 MD012 -->
Context module for Brussels Chocolate Factory

## Required Inputs

The following input variables are required:

### <a name="input_cloud"></a> [cloud](#input\_cloud)

Description: Cloud Provider. Possible values are azure, aws, gcp, oci and onprem.

Type: `string`

### <a name="input_region"></a> [region](#input\_region)

Description: Cloud Region. Valid values for the region: frankfurt, westeurope, northeurope and germanywestcentral.

Type: `string`

## Optional Inputs

The following input variables are optional (have default values):

### <a name="input_environment"></a> [environment](#input\_environment)

Description: Environment - place in the SDLC lifecycle. Valid values for environment: dev, tst, ppr, prd.

Type:

```hcl
object({
    azure = optional(string)
    aws = optional(string)
    gcp = optional(string)
    oci = optional(string)
    onprem = optional(string)
  })
```

Default: `{}`

## Outputs

The following outputs are exported:

### <a name="output_aws"></a> [aws](#output\_aws)

Description: n/a

### <a name="output_azure"></a> [azure](#output\_azure)

Description: Direct Data Access

### <a name="output_context"></a> [context](#output\_context)

Description: context

### <a name="output_gcp"></a> [gcp](#output\_gcp)

Description: n/a

### <a name="output_oci"></a> [oci](#output\_oci)

Description: n/a

### <a name="output_onprem"></a> [onprem](#output\_onprem)

Description: n/a
<!-- END_TF_DOCS -->