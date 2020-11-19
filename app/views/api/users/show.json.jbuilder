json.user do
  @cart = @user.cart
  json.partial! "api/users/user", user: @user, cart: @cart
end