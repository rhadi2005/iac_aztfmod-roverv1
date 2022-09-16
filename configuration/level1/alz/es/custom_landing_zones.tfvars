custom_landing_zones = {
  es-corp = {
    display_name               = "Corp"
    parent_management_group_id = "es-landing-zones"
    archetype_config = {
      archetype_id   = "landingzone_corp"
      parameters     = {}
      access_control = {}
    }
    subscriptions = {}
    subscription_ids = [

    ]
  }

  es-online = {
    display_name               = "Online"
    parent_management_group_id = "es-landing-zones"
    archetype_config = {
      archetype_id   = "landingzone_online"
      parameters     = {}
      access_control = {}
    }
    subscriptions = {}
    subscription_ids = [

    ]
  }

  es-corp-prod = {
    display_name               = "Production"
    parent_management_group_id = "es-corp"
    archetype_config = {
      archetype_id   = "landingzone_prod"
      parameters     = {}
      access_control = {}
    }
    subscriptions = {}
    subscription_ids = [

    ]
  }

  es-corp-non-prod = {
    display_name               = "Non Production"
    parent_management_group_id = "es-corp"
    archetype_config = {
      archetype_id   = "landingzone_non_prod"
      parameters     = {}
      access_control = {}
    }
    subscriptions = {}
    subscription_ids = [

    ]
  }

  es-online-web = {
    display_name               = "Non Production"
    parent_management_group_id = "es-online"
    archetype_config = {
      archetype_id   = "landingzone_online_web"
      parameters     = {}
      access_control = {}
    }
    subscriptions = {}
    subscription_ids = [

    ]
  }

}