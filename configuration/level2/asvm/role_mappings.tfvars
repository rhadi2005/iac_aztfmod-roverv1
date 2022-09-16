
#
# Services supported: subscriptions, storage accounts and resource groups
# Can assign roles to: AD groups, AD object ID, AD applications, Managed identities
#

role_mapping = {
  built_in_role_mapping = {
    resource_groups = {
      level3 = {
        "Reader" = {
          object_ids = {
            keys = [
              "ff518e27-9e62-47fe-922a-6be6a6b5cf65", // caf_platform_maintainers
              "e501b53d-9801-4602-966b-dcd2ce3190c0"  // subscription_creation_landingzones
            ]
          }
          azuread_groups = {
            keys = [
              "caf_ac_landingzone_maintainers_non_prod",
              "caf_ac_landingzone_maintainers_prod"
            ]
          }
        }
      }
      level4 = {
        "Reader" = {
          object_ids = {
            keys = [
              "ff518e27-9e62-47fe-922a-6be6a6b5cf65", // caf_platform_maintainers
              "e501b53d-9801-4602-966b-dcd2ce3190c0"  // subscription_creation_landingzones
            ]
          }
          azuread_groups = {
            keys = [
              "caf_ac_landingzone_maintainers_non_prod",
              "caf_ac_landingzone_maintainers_prod"
            ]
          }
        }
      }
    }

    storage_accounts = {
      level3 = {
        "Storage Blob Data Contributor" = {
          object_ids = {
            keys = [
              "ff518e27-9e62-47fe-922a-6be6a6b5cf65", // caf_platform_maintainers
              "e501b53d-9801-4602-966b-dcd2ce3190c0"  // subscription_creation_landingzones
            ]
          }
        }
        "Owner" = {
          object_ids = {
            keys = [
              "e501b53d-9801-4602-966b-dcd2ce3190c0" // subscription_creation_landingzones
            ]
          }
        }
      }

      level4 = {
        "Storage Blob Data Contributor" = {
          object_ids = {
            keys = [
              "ff518e27-9e62-47fe-922a-6be6a6b5cf65", // caf_platform_maintainers
              "e501b53d-9801-4602-966b-dcd2ce3190c0"  // subscription_creation_landingzones
            ]
          }
        }
        "Owner" = {
          object_ids = {
            keys = [
              "e501b53d-9801-4602-966b-dcd2ce3190c0" // subscription_creation_landingzones
            ]
          }
        }
      }

    }
  }
}
