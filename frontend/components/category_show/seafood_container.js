import { connect } from 'react-redux';
import {getCategory} from '../../actions/categories_actions';
import SeafoodIndex from './seafood_index'

const mSTP = (state) => {
  return {
    seafood: state.entities.categories,
    products: state.entities.products
  }
};

const mDTP = dispatch => {
   return {
    fetchCategory: (id) => dispatch(getCategory(id))
   }
};

export default connect(mSTP, mDTP)(SeafoodIndex);

