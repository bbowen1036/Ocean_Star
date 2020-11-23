import { connect } from 'react-redux';
import React from 'react';
import ProductDisplay from '../products/product_display';

class PantryIndex extends React.Component {
  constructor(props){
    super(props);
    this.state = {
      open: false
    }  
  }
  
  render () {
    const pantryIds = this.props.pantry[6].productId
    const products = this.props.products
    debugger
    const pantryItems = pantryIds.map(id => 
      <ProductDisplay 
      key={`product-list-item${id}`}
      product={products[id]}
      className="category-index-item" /> 
      )
      
      return(
        <div className='category-index'>
          <header className="category-header" >
            <img src="https://oceanstar-seed.s3-us-west-1.amazonaws.com/pantryitems.jpg"  className="meal-kit-img" alt=""/>
            <div className="category-header-text">
              <h1>Pantry</h1>
              <p>All of our pantry items are carefuly sourced from the best artisans dedicated to their craft.</p>
            </div>
          </header>
          <td className='category-item-index'>
            {pantryItems}
          </td>
        </div>     
    )
  } 
}

const mSTP = (state) => {
  return {
    pantry: state.entities.categories,
    products: state.entities.products
  }
};

export default connect(mSTP, null)(PantryIndex);
