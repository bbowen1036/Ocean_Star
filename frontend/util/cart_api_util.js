export const addItemToCart = (cartItem) => {
  // params nested as follows:
  // params.require(:cartItem).permit(:product_id, :cart_id)
  // SENT AS {product_id: 14, cart_id: 6}
 
  return (
    $.ajax({
      url: `/api/cart_items`,
      method: 'POST',
      data: { cartItem }
    })
  )
};

export const removeCartItem = (id) => {

  return (
    $.ajax({
      url: `/api/cart_items/${id}`,
      method: 'DELETE'
    })
  )
};

export const receiveCartItems = (cartId) => {
  return (
    $.ajax({
      url: `/api/carts/${cartId}`,
      method: 'GET'
    })
  )
}