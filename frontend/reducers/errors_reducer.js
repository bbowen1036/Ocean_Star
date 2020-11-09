import { combineReducers } from 'redux';
import sessionErrorsReducer from './session_errors_reducer';

const errorsReducer = combineReducers({
  session: sessionErrorsReducer
});

export default errorsReducer;

//combineReducers function accepts a single argument: 
// an object whose properties represent properties of application state,
// and values that correspond to domain-specific reducing functions.