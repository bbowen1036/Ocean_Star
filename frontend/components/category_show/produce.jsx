import { connect } from 'react-redux';
import React from 'react';
import ProductDisplay from '../products/product_display';



class ProduceIndex extends React.Component {
  constructor(props){
    super(props);
    this.state = {
      open: false
    }
    
  }
  
  render () {
    const produceIds = this.props.produce[3].productId
    const products = this.props.products

    const produceItems = produceIds.map(id => 
      <ProductDisplay 
      key={`product-list-item${id}`}
      product={products[id]}
      className="category-index-item" /> 
      )
      
      return(
        <div className='category-index'>
          <header className="category-header" >
            <img src="https://cdn.shopify.com/s/files/1/0430/7065/2581/files/DSC_0505_3_2f37f275-7b90-45db-b0e8-d7ad476c35e6.jpg?v=1600723230" alt=""/>
            <div className="category-header-text">
              <h1>Produce</h1>
              <p>All our produce is hand-sorted daily & bought-seasonally from small farmers- chosen for their commitment to high-quality, nutritious, & safe products. click our product photos to read about these family farms: their history & current practices.</p>
            </div>
          </header>
          <td className='category-item-index'>
            {produceItems}
          </td>
        </div>
    )
  } 
}

const mSTP = (state) => {
  return {
    produce: state.entities.categories,
    products: state.entities.products
  }
};


export default connect(mSTP, null)(ProduceIndex);


