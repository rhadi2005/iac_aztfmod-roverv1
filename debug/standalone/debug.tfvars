#  root_id                 = var.root_id
#  scope_id                = var.scope_id
#  archetype_id            = var.archetype_id
#  parameters              = var.parameters
#  enforcement_mode        = var.enforcement_mode
#  access_control          = var.access_control
#  library_path            = var.library_path
#  template_file_variables = var.template_file_variables
#  default_location        = var.default_location

#enterprise_scale.tfvars
#library_path                    = "/tf/caf/configuration/level1/alz/es/lib"
library_path                    = "."
root_id                         = "/providers/Microsoft.Management/managementGroups/rasboracafe-root-mgtgrp"
root_name                       = "Contoso"
deploy_core_landing_zones       = true
reconcile_vending_subscriptions = true


archetype_id = "root"
scope_id     = "/subscriptions/a9c7991e-521c-4532-93a9-5a37f82ccaed"
parameters   = ""
#enforcement_mode = ""
#access_control = ""
template_file_variables = ""
default_location        = "region1"

