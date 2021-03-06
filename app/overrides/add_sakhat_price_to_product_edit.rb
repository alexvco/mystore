Deface::Override.new(:virtual_path => 'spree/admin/products/_form',
  :name => 'add_sale_price_to_product_edit',
  :replace => "[data-hook='admin_product_form_price']",
  :text => "

    <div data-hook='admin_product_form_price'>
      <%= f.field_container :price, class: ['form-group'] do %>
        <%= f.label :price, raw(Spree.t(:master_price) + content_tag(:span, ' *', class: 'required')) %>
        <%= f.text_field :price, value: number_to_currency(@product.price, unit: ''), class: 'form-control', disabled: (cannot? :update, Spree::Price) %>
        <%= f.error_message_on :price %>
      <% end %>
    </div>
    
    <div data-hook='admin_product_form_price'>
      <%= f.field_container :sakhat_price, class: ['form-group'] do %>
        <%= f.label :sakhat_price, raw(Spree.t(:sakhat_price) + content_tag(:span, ' *')) %>
        <%= f.text_field :sakhat_price, :value => number_to_currency(@product.sakhat_price, :unit => ''), class: 'form-control' %>
        <%= f.error_message_on :sakhat_price %>
      <% end %>
    </div>
  ") 