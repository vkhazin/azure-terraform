###############################################################################
# Infra
###############################################################################
variable "azure_region" {}

variable "resource_group_name" {}
variable "storage_account_name" {}
###############################################################################


###############################################################################
# AuthC Function App
###############################################################################
variable "function_app_authc_name" {}

# variable "func-runtime-version" {
#   description = "The runtime version associated with the Function App. Possible values are `~1` and `beta`"
#   default     = "~1"
# }

# variable "func-authn-plan-type" {
# }
# ###############################################################################

# # ###
# # optional values
# # ###


# variable "plan_settings" {
#   type        = "map"
#   description = "Definition of the dedicated plan to use"

#   default = {
#     kind     = "Linux" # Linux or Windows
#     size     = "S1"
#     capacity = 1
#   }
# }

# variable "service_plan_name" {
#   description = "The name of the App Service Plan, default = $function_app_name"
#   default     = ""
# }


# variable "app_settings" {
#   description = "A key-value pair of App Settings"
#   default     = {}
# }

# variable "connection_string" {
#   description = "A block containing connection string definitions, see https://www.terraform.io/docs/providers/azurerm/r/function_app.html#connection_string"
#   default     = []
# }

# variable "client_affinity_enabled" {
#   description = "Enable client affinity a.k.a. sticky sessions"
#   default     = false
# }

# variable "git_enabled" {
#   description = "Set deployment mode to local git"
#   default     = true
# }

# variable "site_config" {
#   description = "A key-value pair for Site Config"
#   type        = "list"

#   default = [{
#     always_on = true
#   }]
# }

# // turn always on off in case of consumption plan while preserving custom site_config parameters
# locals {
#   site_config = ["${merge(
#     var.site_config[0],
#     map("always_on", lower(var.plan_type) == "consumption" ? false : lookup(var.site_config[0], "always_on"))
#     )}"]
# }
