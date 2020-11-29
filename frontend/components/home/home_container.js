import { connect } from 'react-redux';
import { getAllCategories } from '../../actions/categories_actions';
import { fetchAllProducts } from '../../actions/product_actions'
import Home from './home'

const mSTP = (state) => ({
  categories: state.entities.categories,
  products: state.entities.products
});

const mDTP = dispatch => ({
  getAllCategories: () => dispatch(getAllCategories()),
  fetchAllProducts: () => dispatch(fetchAllProducts())

});

export default connect(mSTP,mDTP)(Home)