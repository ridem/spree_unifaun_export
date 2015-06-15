Deface::Override.new(
  :virtual_path => 'spree/admin/orders/index',
  :name => 'add_unifaun_export_button',
  :insert_after => "erb[loud]:contains(':simple => true')",
  :text => "
    <div class='form-group pull-right'>
    <%= button_link_to 'Export for Unifaun', admin_orders_path(format: :csv, params: request.query_parameters), :class => 'btn-success', :id => 'admin_export_order' %>
    </div>
  "
)
