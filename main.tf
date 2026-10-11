resource "kubernetes_config_map_v1_data" "config_map_v1_data" {
  for_each = var.config_map_v1_data

  data          = each.value.data
  field_manager = each.value.field_manager
  force         = each.value.force

  metadata {
    name      = each.value.metadata.name
    namespace = each.value.metadata.namespace
  }
}

