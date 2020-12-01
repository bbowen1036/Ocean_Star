import { connect } from 'react-redux';
import React from 'react';
import ProductDisplay from '../products/product_display';



class MeatIndex extends React.Component {
  constructor(props){
    super(props);
    this.state = {
      open: false
    }
    
  }
  
  render () {
    const meatIds = this.props.meat[2].productId
    const products = this.props.products
 
    const meatItems = meatIds.map(id => 
      <ProductDisplay 
      key={`product-list-item${id}`}
      product={products[id]}
      className="category-index-item" /> 
      )
      
      return(
        <div className='category-index'>
          <header className="category-header" >
            <img src="https://cdn.shopify.com/s/files/1/0430/7065/2581/files/DSC_0408_2_1a82514e-02be-4d53-88ec-21e4a6f5d7ce.jpg?v=1600723299" alt=""/>
            <div className="category-header-text">
              <h1>Meat</h1>
              <p>Highest grade Poultry and Meats sourced directly from our local ranches.</p>
            </div>
          </header>
          <div className='category-item-index'>
            {meatItems}
          </div>
        </div>
    )
  } 
}

const mSTP = (state) => {
  return {
    meat: state.entities.categories,
    products: state.entities.products
  }
};


export default connect(mSTP, null)(MeatIndex);
