json.extract! user, :email, :id, :first_name
json.cart do
  json.set! cart.id do
    items = cart.cart_items.map{|item| item.product_id}
    json.array! items
  end
end