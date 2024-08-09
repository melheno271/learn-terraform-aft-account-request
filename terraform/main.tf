module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "melkonyanhenrik+sandbox@gmail.com"
    AccountName               = "sandbox-aft"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "melkonyanhenrik+sandbox@gmail.com"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}

module "development" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "melkonyanhenrik+development@gmail.com"
    AccountName               = "development"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "melkonyanhenrik+development@gmail.com"
    SSOUserFirstName          = "Development"
    SSOUserLastName           = "AFTDEV"
  }

  account_tags = {
    "Learn Tutorial" = "dev-AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Vending Development Account 02"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
