import { NEW_MESSAGE } from '../actions/message_actions';

const messageReducer = (state = [], action) => {
  Object.freeze(state);
  debugger
  switch (action.type) {
    case NEW_MESSAGE:
      return action.messageResponse 
    default:
      return state
  }
};

export default messageReducer;