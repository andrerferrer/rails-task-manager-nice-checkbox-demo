# Handling the CheckBox

## How to have a (somewhat) Nice Checkbox

![nice checkbox](https://i.imgur.com/aOBqV5h.png)

We'll start by installing `bootstrap` and `font awesome`.

## Add bootstrap
In the terminal:

`yarn add boostrap`

Rename your `app/assets/stylesheets/application.css` into `app/assets/stylesheets/application.scss`.

Add this to your `application.scss`:

`@import "bootstrap/scss/bootstrap";`

Boostrap is ✔!

## Add Font awesome

## Add simple form for
 and `simple_form_for`

 
## Make the Changes on the Index View

Now, we're going to change how it displays in the `index.html.erb`. Add these in your loop:

```html
<% @tasks.each do |task| %>
    <li>
      <% if task.completed %> <%# ADD THIS LINE %>
        <i class="fa fa-check-square-o"></i> <%# ADD THIS LINE %>
      <% else %> <%# ADD THIS LINE %>
        <i class="fa fa-square-o"></i> <%# ADD THIS LINE %>
      <% end %> e]<%# ADD THIS LINE %>

      <%= link_to task.title, task_path(task.id) %>
      
      <%= link_to task_path(task.id), method: :delete, data: { confirm: "Delete #{task.title}?" } do %>
        <i class="fa fa-trash-o" aria-hidden="true"></i>
      <% end %>
    </li>
  <% end %>
```

And that's it 🤓.




Then, we're going to implement a new feature.
Which is a new Mantra 🕉!

## Routes > Controller > View

### Routes
### Controller
### View

