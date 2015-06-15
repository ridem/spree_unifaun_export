Deface::Override.new(
  virtual_path:  'spree/admin/shared/sub_menu/_configuration',
  name:          'add_unifaun_export_admin_configurations_menu',
  insert_bottom: '[data-hook="admin_configurations_sidebar_menu"]',
  text:          '<%= configurations_sidebar_menu_item Spree.t(:settings, scope: :unifaun_export), spree.edit_admin_unifaun_export_settings_path %>'
)
