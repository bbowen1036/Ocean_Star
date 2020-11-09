// Entities Reducer responsible for combining reducers that handle relational data

import { combineReducers } from 'redux';
import usersReducer from './users_reducer';

const entitiesReducer = combineReducers({
  users: usersReducer
});

export default entitiesReducer;