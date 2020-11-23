import * as APIUtil from '../util/messages_api_util';

export const NEW_MESSAGE = 'NEW_MESSAGE';

const addMessage = messageResponse => ({
  type: NEW_MESSAGE,
  messageResponse
});


export const newMessage = message => dispatch => (
  APIUtil.createMessage(message) 
    .then(messageResponse => dispatch(addMessage(messageResponse)))
);