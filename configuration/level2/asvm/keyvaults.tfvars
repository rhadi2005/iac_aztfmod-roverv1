
keyvaults = {
  level3 = {
    name               = "l3"
    resource_group_key = "level3"
    sku_name           = "standard"
    tags = {
      caf_tfstate     = "level3"
      caf_environment = "vcf-obs"
    }

    creation_policies = {
      subscription_creation_landingzones = {
        object_id          = "e501b53d-9801-4602-966b-dcd2ce3190c0"
        secret_permissions = ["Get"]
      }
      level0 = {
        object_id          = "39a42c72-3663-4746-a4d0-f96ab668836b"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      caf_platform_maintainers = {
        object_id          = "ff518e27-9e62-47fe-922a-6be6a6b5cf65"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
    }

  }

  level4 = {
    name               = "l4"
    resource_group_key = "level4"
    sku_name           = "standard"
    tags = {
      caf_tfstate     = "level4"
      caf_environment = "vcf-obs"
    }

    creation_policies = {
      subscription_creation_landingzones = {
        object_id          = "e501b53d-9801-4602-966b-dcd2ce3190c0"
        secret_permissions = ["Get"]
      }
      caf_ac_landingzone_maintainers_non_prod = {
        azuread_group_key  = "caf_ac_landingzone_maintainers_non_prod"
        secret_permissions = ["Get"]
      }
      caf_ac_landingzone_maintainers_prod = {
        azuread_group_key  = "caf_ac_landingzone_maintainers_prod"
        secret_permissions = ["Get"]
      }
      level0 = {
        object_id          = "39a42c72-3663-4746-a4d0-f96ab668836b"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      caf_platform_maintainers = {
        object_id          = "ff518e27-9e62-47fe-922a-6be6a6b5cf65"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
    }

  }

}
