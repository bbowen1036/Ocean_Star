import { 
  ADD_CART_ITEM,
  DELETE_CART_ITEM,
  RECEIVE_CART 
} from '../actions/cart_actions';

const cartReducer = (state = {}, action) => {
  Object.freeze(state);
  switch (action.type) {
    
    case ADD_CART_ITEM: 
      return Object.assign( {}, Object.values(action.item) );
    case RECEIVE_CART:
      return action.cart;
    case DELETE_CART_ITEM:
      return action.updatedCart;
    default:
      return state;
  }
};

export default cartReducer;