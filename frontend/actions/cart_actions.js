import * as APIUtil from '../util/cart_api_util';

export const ADD_CART_ITEM = 'ADD_CART_ITEM';
export const DELETE_CART_ITEM = 'DELETE_CART_ITEM';
export const RECEIVE_CART = 'RECEIVE_CART';

const addItem = item => ({
  type: ADD_CART_ITEM,
  item
});

const removeItem = (updatedCart) => ({
  type: DELETE_CART_ITEM,
  updatedCart
})

const receiveCart = cart => ({
  type: RECEIVE_CART,
  cart
})


export const addCartItem = item => dispatch => {
  
  return (
    APIUtil.addItemToCart(item)
      .then(newCartItem => {

        return(
        dispatch(addItem(newCartItem)))
      })
  )
};

export const deleteCartItem = id => dispatch => {
  return (
    APIUtil.removeCartItem(id)
      .then((itemId) => {
        return(
          dispatch(removeItem(itemId))
        )
      })
  )
};

export const fetchCart = cartId => dispatch => (
  APIUtil.receiveCartItems(cartId)
    .then(cart => dispatch(receiveCart(cart)))
)

