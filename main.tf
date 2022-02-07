provider "ibm" {
    region = "us-east"
}

data "ibm_resource_group" "test" {
    is_default = true
}

resource "null_resource" "sleep" {
  provisioner "local-exec" {
    command = "sleep 120"
  }
}



terraform {
  required_providers {
    ibm = {
      source = "IBM-Cloud/ibm"
      version = "1.38.1"
    }
  }
}


