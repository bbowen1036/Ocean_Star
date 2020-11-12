import { RECEIVE_CATEGORY } from '../actions/categories_actions';

const categoriesReducer = (state = {}, action ) => {
  Object.freeze(state);

  switch (action.type) {
    case RECEIVE_CATEGORY:
      return action.category
    default:
      return state
  }
};

export default categoriesReducer;