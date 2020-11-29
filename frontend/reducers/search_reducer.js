import { FIND_PRODUCTS } from '../actions/product_actions';

const searchReducer = (state = [], action) => {

  Object.freeze(state);

  switch (action.type) {
    case FIND_PRODUCTS:
      return action.products 
    default:
      return state;
  }
};

export default searchReducer;