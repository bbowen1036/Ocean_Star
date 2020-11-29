import { connect } from 'react-redux';
import Cart from './cart';
import { 
  addCartItem, 
  deleteCartItem, 
  fetchCart 
} from '../../actions/cart_actions';

import { fetchAllProducts } from '../../actions/product_actions'


const mSTP = ({ session, entities: { users, products }}) => {
  return {
    currentUser: users[session.id],
    products
  };
};

const mDTP = dispatch => ({
  fetchCart: (id) => dispatch(fetchCart(id)),
  addItem: (item) => dispatch(addCartItem(item)),
  removeItem: (itemId) => dispatch(deleteCartItem(itemId))
})


export default connect(mSTP, mDTP)(Cart)