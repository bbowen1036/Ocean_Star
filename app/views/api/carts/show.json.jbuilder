json.set! @cart.id do
  json.productIds do
    ids = @cart.cart_items.map{|item| item.product_id}
    json.array! ids
  end
end