// Entities Reducer responsible for combining reducers that handle relational data

import { combineReducers } from 'redux';
import usersReducer from './users_reducer';
import productsReducer from './products_reducer';
import categoriesReducer from './categories_reducer';
import searchReducer from './search_reducer';
import cartReducer from './cart_reducer';
import messageReducer from './messages_reducer';

const entitiesReducer = combineReducers({
  users: usersReducer,
  products: productsReducer,
  categories: categoriesReducer,
  search: searchReducer,
  cart: cartReducer,
  message: messageReducer
});

export default entitiesReducer;