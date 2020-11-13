import { RECEIVE_CATEGORY, RECEIVE_ALL_CATEGORIES } from '../actions/categories_actions';

const categoriesReducer = (state = {}, action ) => {
  Object.freeze(state);

  switch (action.type) {
    case RECEIVE_CATEGORY:
      return action.category;
    case RECEIVE_ALL_CATEGORIES:
      return action.categories;
    default:
      return state
  }
};

export default categoriesReducer;