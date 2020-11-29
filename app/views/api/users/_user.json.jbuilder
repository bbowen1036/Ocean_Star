json.extract! user, :email, :id, :first_name
if user.cart 
  cart = user.cart

  json.cartId do
    json.extract! cart, :id
  end

  json.cart do
    json.set! cart.id do
      cart.cart_items.each do |item|
        json.set! item.id, item.product_id  
      end
    end
  end
end



# json.extract! user, :email, :id, :first_name
# if user.cart 
#   cart = user.cart
  
#   json.cart do
#     json.set! cart.id do
#       # cartItems = cart.cart_items.map{|item| item.id}
#       # # items = cart.cart_items.map{|item| item.product_id}
#       # json.array! cartItems
#       cart.cart_items.each do |item|
#         json.set! item.id, item.product_id  
#       end
#     end
#   end

# end