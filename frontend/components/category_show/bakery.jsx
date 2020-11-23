import { connect } from 'react-redux';
import React from 'react';
import ProductDisplay from '../products/product_display';

class BakeryIndex extends React.Component {
  constructor(props){
    super(props);
    this.state = {
      open: false
    }  
  }
  
  render () {
    const bakeryIds = this.props.bakery[5].productId
    const products = this.props.products
    debugger
    const bakeryItems = bakeryIds.map(id => 
      <ProductDisplay 
      key={`product-list-item${id}`}
      product={products[id]}
      className="category-index-item" /> 
      )
      
      return(
        <div className='category-index'>
          <header className="category-header" >
            <img src="https://cdn.shopify.com/s/files/1/0430/7065/2581/files/DSC_0075_28_22f467fd-84d5-47fe-a44e-0c7697480cbb.jpg?v=1600723666"  className="meal-kit-img" alt=""/>
            <div className="category-header-text">
              <h1>Bakery</h1>
              <p>All our Meal Kits are crafted by the top Restaurants and Purveyors. Always fresh, always seasonal, Always local.</p>
            </div>
          </header>
          <td className='category-item-index'>
            {bakeryItems}
          </td>
        </div>     
    )
  } 
}

const mSTP = (state) => {
  return {
    bakery: state.entities.categories,
    products: state.entities.products
  }
};

export default connect(mSTP, null)(BakeryIndex);

