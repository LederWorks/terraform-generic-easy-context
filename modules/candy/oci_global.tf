#  $$$$$$\   $$$$$$\  $$$$$$\        $$$$$$\  $$\       $$$$$$\  $$$$$$$\   $$$$$$\  $$\       
# $$  __$$\ $$  __$$\ \_$$  _|      $$  __$$\ $$ |     $$  __$$\ $$  __$$\ $$  __$$\ $$ |      
# $$ /  $$ |$$ /  \__|  $$ |        $$ /  \__|$$ |     $$ /  $$ |$$ |  $$ |$$ /  $$ |$$ |      
# $$ |  $$ |$$ |        $$ |        $$ |$$$$\ $$ |     $$ |  $$ |$$$$$$$\ |$$$$$$$$ |$$ |      
# $$ |  $$ |$$ |        $$ |        $$ |\_$$ |$$ |     $$ |  $$ |$$  __$$\ $$  __$$ |$$ |      
# $$ |  $$ |$$ |  $$\   $$ |        $$ |  $$ |$$ |     $$ |  $$ |$$ |  $$ |$$ |  $$ |$$ |      
#  $$$$$$  |\$$$$$$  |$$$$$$\       \$$$$$$  |$$$$$$$$\ $$$$$$  |$$$$$$$  |$$ |  $$ |$$$$$$$$\ 
#  \______/  \______/ \______|       \______/ \________|\______/ \_______/ \__|  \__|\________|

locals {
  oci_global = {
    hub_vcn_id = local.is_valid_azure_region ? {
      us-ashburn-1 = "ocid1.vcn.oc1.iad.aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaahub"
      us-phoenix-1 = "ocid1.vcn.oc1.phx.aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaahub"
      us-sanjose-1 = "ocid1.vcn.oc1.sjc.aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaahub"
      eu-frankfurt-1 = "ocid1.vcn.oc1.eu-frankfurt-1.aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaahub"
      eu-amsterdam-1 = "ocid1.vcn.oc1.eu-amsterdam-1.aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaahub"
      eu-london-1 = "ocid1.vcn.oc1.eu-london-1.aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaahub"
    }[local.region]: null

    #Proxies
    http_proxy = "http://proxy.oci.candy.me:8083/"

    #Firewalls
    firewall_egress = [
      "1.2.3.4/27",
      "4.5.6.7/27"
    ]

  }
}