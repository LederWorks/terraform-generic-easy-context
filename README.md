<!-- BEGIN_TF_DOCS -->
<!-- markdownlint-disable-file MD033 MD012 -->
# terraform-generic-easy-context
LederWorks Easy Context Module

This module were created by [LederWorks](https://lederworks.com) IaC enthusiasts.

## How to Use This Module
- Ensure Azure credentials are [in place](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs#authenticating-to-azure) (e.g. `az login` and `az account set --subscription="SUBSCRIPTION_ID"` on your workstation)
- Owner role or equivalent is required!
- Ensure pre-requisite resources are created.
- Create a Terraform configuration that pulls in this module and specifies values for the required variables.

## About This Module
This module implements a Context Store for Wonka's Sweet Companies

Long before he became a legend in the confectionery world, Willie Wonka's tale began in the humblest of settings—an orphanage nestled in the heart of an old European village. The young Wonka, with no family to speak of, found solace in the kitchen, where the aroma of baking sweets filled the air and ignited his passion for chocolate. An elderly cook, fond of the bright-eyed boy, took him under her wing, revealing the secrets of tempering chocolate and crafting confections that could make one's heart sing. Night after night, young Wonka experimented with cocoa beans and sugar, his hands coated in the makings of what would become his future empire. His creations quickly became the orphanage's most coveted treasures, with whispers of his talent traveling beyond the worn-out gates. It wasn't just the sweetness of his chocolate that captivated those who sampled it; it was the sprinkling of love and wonder that seemed to dance in every bite. With each truffle and bar, Willie Wonka wasn't just learning to make chocolate—he was learning to make magic.

## Examples

Years later, that same magic paved the way for Willie Wonka to establish the Brussels Chocolate Factory, a marvel of innovation and delight that quickly set the gold standard in the industry. Wonka's approach to chocolate-making was nothing short of revolutionary, blending age-old techniques with whimsical invention. His relentless pursuit of perfection and flair for the fantastical led to an expansion that soon saw Wonka's Sweet Companies planting roots on every habitable continent. He understood early on the importance of technology in sustaining his growing empire and invested heavily in on-premise data centers to support his ERP (Enterprise Resource Planning) and CRM (Customer Relationship Management) systems. This infrastructure became the digital backbone of the factories, ensuring that Wonka's delectable treats were produced with the utmost efficiency and never failed to reach the hands of eager consumers around the globe. His factories were not just places of work; they were shrines to the craft of confectionery, where the scent of chocolate wafted through the air and innovation never ceased.

### Example for Brussels Chocolate Factory with Onpremise PRD context.
```hcl
module "context_choco_onprem_prd" {
  source = "../.."

  #Common
  cloud       = "onprem"
  environment = "prd"
  region      = "eu-central"

  #General
  department = "technology"
  project    = "erp"
  tags = {
    OwnerContact = "wonka@choco.me"
    OwnerOU      = "choco"
    Sweetness    = "sparkling"
  }
  custom_tags = {
    HQ = "Brussels"
  }
}
output "onprem_prd_context" {
  value = module.context_choco_onprem_prd.context
}
```

As the demand for Wonka's confections soared, so too did the need for a robust, scalable, and more secure IT infrastructure. The on-premise data centers, once the heart of Wonka's technological endeavors, began to buckle under the strain of global operations. It was the dawn of the cloud computing era, and Willie Wonka, ever the visionary, saw the boundless potential it offered. The firm embarked on a bold transition, shifting critical systems to the public cloud infrastructures of Azure, AWS, and GCP. This move to the cloud allowed for unparalleled agility and scale, ensuring that the magical world of Wonka's chocolate could reach farther and enchant more people than ever before. Data flowed like rivers of liquid chocolate, seamlessly connecting every corner of the Wonka empire. The transition was not without its challenges, but under Wonka's unwavering guidance, the company emerged more resilient and connected, poised to conquer new markets and delight customers with every sugary creation.

### Example for Brussels Chocolate Factory with Azure DEV context.
```hcl
module "context_choco_azure_dev" {
  source = "../.."

  #Common
  environment = "dev"
  region      = "germanywestcentral"

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

  #Regions
  oci_regions = data.oci_identity_regions.regions.regions
}
output "azure_dev_context" {
  value = module.context_choco_azure_dev.context
}

output "oci_regions" {
  value = module.context_choco_azure_dev.oci_regions
}
```

### Example for Brussels Chocolate Factory with GCP TST context.
```hcl
module "context_choco_gcp_tst" {
  source = "../.."

  #Common
  cloud       = "gcp"
  environment = "tst"
  region      = "us-east1"

  #General
  department = "marketing"
  project    = "milk"
  tags = {
    OwnerContact = "wonka@choco.me"
    OwnerOU      = "choco"
    Sweetness    = "bitter"
  }
  custom_tags = {
    HQ = "Brussels"
  }
}
output "gcp_tst_context" {
  value = module.context_choco_gcp_tst.context
}
```

### Example for Brussels Chocolate Factory with AWS PPR context.
```hcl
# module "context_choco_aws_ppr" {
#   source = "../.."

#   #Common
#   cloud       = "aws"
#   environment = "ppr"
#   region      = "northeurope"

#   #General
#   department = "legal"
#   project    = "cocoa"
#   tags = {
#     OwnerContact = "wonka@choco.me"
#     OwnerOU      = "choco"
#     Sweetness    = "very"
#   }
#   custom_tags = {
#     HQ = "Brussels"
#   }
# }
# output "context_choco_aws_ppr" {
#   value = module.context_choco_aws_ppr.context
# }
```

The narrative of Willie Wonka's success took a significant turn with the strategic acquisition of the Cologne Candy Shop, a gem in its own right with a rich heritage and an established customer base. Remarkably, the shop had been operating on OCI (Oracle Cloud Infrastructure), presenting a unique integration challenge for Wonka's Sweet Companies. The merger was more than a business transaction; it was a fusion of traditions, innovation, and dreams. Wonka, with his characteristic blend of creativity and business acumen, orchestrated the integration process meticulously, ensuring that the Cologne Candy Shop's legacy was preserved while leveraging the efficiencies of OCI. The unification expanded the company's repertoire, introducing time-honored recipes and new flavors to the Wonka portfolio. The fusion of the two companies was symbolic of the larger confectionery tapestry Wonka was weaving—a world where every treat held a story, every bite was an adventure, and every customer, regardless of location, could savor the full Wonka experience. Through this acquisition, Willie Wonka's journey wasn't just about building a business; it was about crafting a global narrative of sweet indulgence and shared joy.

### Example for Cologne Candy Shop OCI DEV context.
```hcl
module "context_candy_oci_int" {
  source = "../.."

  #Common
  subsidiary  = "candy"
  cloud       = "oci"
  environment = "int"
  region      = "us-phoenix-1"

  #General
  department = "logistics"
  project    = "trucks"
  tags = {
    OwnerContact = "wonka@candy.me"
    OwnerOU      = "candy"
    Sweetness    = "very"
  }
  custom_tags = {
    HQ = "Cologne"
  }
}
output "context_candy_oci_int" {
  value = module.context_candy_oci_int.context
}
```

With his empire expanding and his name synonymous with chocolate, Willie Wonka's ambitious gaze turned to the frosty realm of ice creams. Dreaming of crafting frozen treats that echoed his confectionery's creativity, he sought to launch ice creams under the Wonka brand. However, his plans were soon met with a chilling reception from the EU and US anti-trust authorities. His intent to acquire Istanbul Icecream Industries — a behemoth that churned out the majority of the world's ice cream—stirred a cauldron of legal battles over monopoly concerns. The authorities feared that such a consolidation would freeze out competition and leave consumers with a vanilla landscape of ice cream choices. Wonka, never one to shy away from a challenge, geared up for a legal labyrinth, his spirit undeterred. He ardently believed that the melding of his chocolate expertise with the ice cream giant would result in a symphony of flavors that could bring even more joy to the world. The outcome of these frigid confrontations remained uncertain, but Wonka's determination to add a scoop of wonder to his sweet empire burned hotter than ever. Finally with the help of his professional legal department and his bottomless wallet he accomplished this biggest achievement of his life.

### Example for Istanbul Icecream Industries
```hcl
# Module Test
```

As Wonka navigated the frosty tides of his ice cream endeavor, a chance encounter in London brought warmth to his heart. It was there, amidst the quaint charm of Notting Hill, that he met the enchanting Eleanor Sugarworth, proprietor of the local treasure, London Muffin Manufactures. Eleanor, with her keen taste for baked delight and a spark in her eyes, captivated Willie at first sight. Their shared passion for sweets and an instinct for business made for a perfect blend. As their fondness for each other grew, so did Willie's desire to bring Eleanor's muffin magic under the vast umbrella of Wonka's Sweet Companies. With his support and vision, the once-small business transformed into a global sensation, its muffins becoming as renowned as Wonka's chocolates. Eleanor and Willie's partnership in business mirrored their blossoming love, culminating in marriage. The London Muffin Manufactures' success story became a testament to their bond, enriching the Wonka brand with warmth, love, and freshly baked success.

### Example for London Muffin Manufactures
```hcl
# Module Test
```

As the years ripened Willie Wonka's legacy, so did his passions evolve. In the golden years of his career, his sweet tooth found an unlikely new muse—waffles. Wonka's zest for innovation ignited a fiery quest to outdo the renowned Belgian waffles with his own creation. He established the Amsterdam Waffel Works, a dedicated haven for crafting a waffle that would leave the Belgians in awe. His vision was clear: to blend the crisp, golden texture of traditional waffles with the whimsical flavors that had become his signature. The Amsterdam Waffel Works quickly became a laboratory of delight, where Wonka could be found perfecting recipes that pushed the boundaries of waffle wizardry. His waffles were not mere breakfast fare; they were edible masterpieces, a brand-new canvas for his never-ending creativity. As word of Wonka's waffle wonders spread, it wasn't just Amsterdam that was abuzz; the whole world eagerly awaited a taste of his latest culinary triumph.

### Example for Amsterdam Waffel Works
```hcl
# Module Test
```

In the intricate dance of managing his global empire, Willie Wonka recognized the need for a harmonious technological symphony. Enter Lederworks, an organization renowned for their prowess in terraform infrastructure as code. They crafted for Wonka an ingenious terraform context module, a marvel that seamlessly wove together the diverse tapestry of his subsidiaries and their cloud environments. This framework of constants store became the crown jewel of the empire's IT strategy, enabling every company within the Wonka fold to operate with synchronized precision and agility. It was a digital alchemy that transformed complex IT landscapes into a unified realm, one where resources flowed as smoothly as chocolate from a fountain. Lederworks’ solution was not just a technical feat; it was a testament to Wonka's foresight in embracing innovation to uphold the enchantment of his brand. With this new, formidable tool at his disposal, Willie Wonka's businesses could adapt and thrive in an ever-changing world, bound together by a singular, efficient framework of magic and code.

## Requirements

The following requirements are needed by this module:

- <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) (>= 1.6.0)

## Providers

No providers.

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

Description: Cloud Provider. Possible values are azure, aws, gcp, oci and onprem.

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

### <a name="input_oci_regions"></a> [oci\_regions](#input\_oci\_regions)

Description:   You can use this variable to dynamically define the region short codes for all available regions in OCI.

  ```hcl
  data "oci_identity_regions" "regions" {}

  module "context" {
    oci_regions = data.oci_identity_regions.regions.regions
  }
```

Type: `any`

Default: `null`

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

### <a name="output_all_candy"></a> [all\_candy](#output\_all\_candy)

Description: Values for all Candy Shop environments

### <a name="output_all_choco"></a> [all\_choco](#output\_all\_choco)

Description: Values for all Chocolate Factory environments

### <a name="output_cloud"></a> [cloud](#output\_cloud)

Description: Cloud Provider

### <a name="output_context"></a> [context](#output\_context)

Description: Context generated by input parameters

### <a name="output_environment"></a> [environment](#output\_environment)

Description: Environment

### <a name="output_oci_short_regions"></a> [oci\_short\_regions](#output\_oci\_short\_regions)

Description: n/a

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