// Entities Reducer responsible for combining reducers that handle relational data

import { combineReducers } from 'redux';
import usersReducer from './users_reducer';
import productsReducer from './products_reducer';
import categoriesReducer from './categories_reducer';
import searchReducer from './search_reducer';

const entitiesReducer = combineReducers({
  users: usersReducer,
  products: productsReducer,
  categories: categoriesReducer,
  search: searchReducer
});

export default entitiesReducer;