import {
  RECEIVE_ALL_PRODUCTS,
  RECEIVE_PRODUCT
} from '../actions/product_actions';

const productsReducer = (state = {}, action) => {
  Object.freeze(state);

  switch (action.type) {
    case RECEIVE_PRODUCT:
      return { [action.product.id]: action.product }
    case RECEIVE_ALL_PRODUCTS:
      return action.products
    default:
      return state;
  }
};

export default productsReducer;