import { connect } from 'react-redux';
import Modal from './modal';
import { newMessage } from '../../actions/message_actions';

const mSTP = ({ session, entities: { users } }) => {
  const currentUser = users[session.id];
  return {
      currentUser,
  }
};

const mDTP = dispatch => ({
  sendMessage: message => dispatch(newMessage(message))
})

export default connect(mSTP, mDTP)(Modal);
