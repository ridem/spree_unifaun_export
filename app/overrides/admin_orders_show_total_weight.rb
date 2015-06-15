Deface::Override.new(
  :virtual_path => 'spree/admin/shared/_order_summary',
  :name => 'display_total_weight',
  :insert_after => "erb[loud]:contains('@order.completed_at')",
  :text => "
      <tr>
        <td id='order_status' width='35%' data-hook>
          <strong>Total Weight (g):</strong>
        </td>
        <td>
          <span>
            <%- @order.line_items.each do |line_item| -%>
              <%- @packageWeight += line_item.variant[:weight].to_f * line_item.quantity.to_f -%>
            <%- end -%>
            <%= @packageWeight.to_int =%>
          </span>
        </td>
      </tr>
"
)