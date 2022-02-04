<section class="admin-categories-new">

  <header class="page-header">
    <h1>Admin &raquo; New Category</h1>
  </header>

  <div class="well">
    <%= link_to 'All Categories', [:admin, :categories], class: 'btn btn-info' %>
  </div>

  <div class="row">
    <div class="col-sm-6 col-sm-offset-1">
      <%= form_for [:admin, @category] do |form| %>
        <% if form.object.errors.any? %>
          <div class="alert alert-danger">
            <strong>The following errors prevented saving:</strong>
            <ul>
              <% form.object.errors.full_messages.each do |error| %>
                <li><%= error %></li>
              <% end %>
            </ul>
          </div>
        <% end %>

        <div class="form-group">
          <%= form.label :name %>
          <%= form.text_field :name, class: 'form-control' %>
        </div>

        <div class="form-group">
          <%= form.label :quantity %>
          <%= form.number_field :quantity, class: 'form-control' %>
        </div>
        
        <%= form.submit 'Create Category', class: 'btn btn-primary' %>
      <% end %>
    </div>
  </div>

</section>