import { connect } from 'react-redux';
import { findProduct } from '../../actions/product_actions';
import Search from './search'

const mSTP = ({ entities: {search} }) => {
  return {
    products: search
  }
};

const mDTP = dispatch => {
  return {
    findProduct: (query) => dispatch(findProduct(query))
  }
}

export default connect(mSTP, mDTP)(Search);