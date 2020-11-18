import { connect } from 'react-redux';
import Navbar from './navbar';
import { logout } from '../../actions/session_actions';
import { findProduct } from '../../actions/product_actions';

const mSTP = (state) => ({
  currentUser: Object.values(state.entities.users)[0]
});

const mDTP = dispatch => ({
  logout: () => dispatch(logout()),
  findProduct: (query) => dispatch(findProduct(query))
});

export default connect(mSTP, mDTP)(Navbar)