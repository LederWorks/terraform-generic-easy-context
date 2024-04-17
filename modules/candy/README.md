<!-- BEGIN_TF_DOCS -->
<!-- markdownlint-disable-file MD033 MD012 -->
Context module for Cologne Candy Shop

## Required Inputs

The following input variables are required:

### <a name="input_cloud"></a> [cloud](#input\_cloud)

Description: Cloud Provider. Possible values are azure and oci.

Type: `string`

### <a name="input_environment"></a> [environment](#input\_environment)

Description: Environment - place in the SDLC lifecycle

Type: `string`

### <a name="input_region"></a> [region](#input\_region)

Description: Cloud Region

Type: `string`

## Optional Inputs

No optional inputs.

## Outputs

The following outputs are exported:

### <a name="output_azure"></a> [azure](#output\_azure)

Description: Direct Data Access

### <a name="output_context"></a> [context](#output\_context)

Description: context

### <a name="output_oci"></a> [oci](#output\_oci)

Description: n/a
<!-- END_TF_DOCS -->