import { connect } from 'react-redux';
import Cart from './cart';



const mSTP = ({ session, entities: { users } }) => {
  return {
    currentUser: users[session.id],
  };
};


export default connect(mSTP, null)(Cart)