import { connect } from 'react-redux';
import { getAllCategories } from '../../actions/categories_actions';
import Home from './home'

const mSTP = (state) => ({
  categories: state.entities.categories,
  products: state.entities.products
});

const mDTP = dispatch => ({
  getAllCategories: () => dispatch(getAllCategories())
});

export default connect(mSTP,mDTP)(Home)