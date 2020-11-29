# json.set! @cart.id do
#   # json.productIds do
#     ids = @cart.cart_items.map{|item| item.product_id}
#     json.array! ids
#   # end
# end

json.set! @cart.id do
  @cart.cart_items.each do |item|
    json.set! item.id, item.product_id  
  end
end