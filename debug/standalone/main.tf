# Generate the Policy Assignment configurations for the specified archetype.
# Logic implemented to determine whether Policy Assignments
# need to be loaded to save on compute and memory resources
# when none defined in archetype definition.

#locals {
#  archetype_policy_assignments_list      = local.archetype_definition.policy_assignments
#  archetype_policy_assignments_specified = try(length(local.archetype_policy_assignments_list) > 0, false)
#}

# If Policy Assignments are specified in the archetype definition, generate a list of all Policy Assignment files from the built-in and custom library locations
locals {
  builtin_policy_assignments_from_json = tolist(fileset(".", "**/policy_assignment_*.{json,json.tftpl}"))
  #  custom_policy_assignments_from_json  = local.archetype_policy_assignments_specified && local.custom_library_path_specified ? tolist(fileset(".", "**/policy_assignment_*.{json,json.tftpl}")) : null

  custom_policy_assignments_from_json = null

}

# If Policy Assignment files exist, load content into dataset
locals {
  builtin_policy_assignments_dataset_from_json = try(length(local.builtin_policy_assignments_from_json) > 0, false) ? {
    for filepath in local.builtin_policy_assignments_from_json :
    filepath => jsondecode(templatefile("policy_assignment_es_allowed_locations.json", local.template_file_vars))
  } : null

  custom_policy_assignments_dataset_from_json = try(length(local.custom_policy_assignments_from_json) > 0, false) ? {
    for filepath in local.custom_policy_assignments_from_json :
    filepath => jsondecode(templatefile("custom_policy_assignment_es_allowed_locations.json", local.template_file_vars))
  } : null

}

# If Policy Assignment datasets exist, convert to map
locals {
  builtin_policy_assignments_map_from_json = try(length(local.builtin_policy_assignments_dataset_from_json) > 0, false) ? {
    for key, value in local.builtin_policy_assignments_dataset_from_json :
    value.name => value...
    #    if value.type == local.resource_types.policy_assignment
  } : null


  custom_policy_assignments_map_from_json = try(length(local.custom_policy_assignments_dataset_from_json) > 0, false) ? {
    for key, value in local.custom_policy_assignments_dataset_from_json :
    value.name => value
    #    if value.type == local.resource_types.policy_assignment
  } : null

}

# Merge the Policy Assignment maps into a single map.
# If duplicates exist due to a custom Policy Assignment being
# defined to override a built-in definition, this is handled by
# merging the custom policies after the built-in policies.
locals {
  archetype_policy_assignments_map = merge(
    local.builtin_policy_assignments_map_from_json,
    #    local.builtin_policy_assignments_map_from_yaml,
    local.custom_policy_assignments_map_from_json,
    #    local.custom_policy_assignments_map_from_yaml,
  )
}




