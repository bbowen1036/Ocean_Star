import { connect } from 'react-redux';
import React from 'react';
import ProductDisplay from '../products/product_display';

class MealKitIndex extends React.Component {
  constructor(props){
    super(props);
    this.state = {
      open: false
    }  
  }
  
  render () {
    const mealKitIds = this.props.mealKit[4].productId
    const products = this.props.products
 
    const mealKitItems = mealKitIds.map(id => 
      <ProductDisplay 
      key={`product-list-item${id}`}
      product={products[id]}
      className="category-index-item" /> 
      )
      
      return(
    


        <div className='category-index'>
          <header className="category-header" >
            <img src="https://cdn.shopify.com/s/files/1/0430/7065/2581/files/prepare_meal_49355299-d3ce-4efb-bd27-3495114ebffb.jpg?v=1598900562"  className="meal-kit-img" alt=""/>
            <div className="category-header-text">
              <h1>mealKit</h1>
              <p>All our Meal Kits are crafted by the top Restaurants and Purveyors. Always fresh, always seasonal, Always local.</p>
            </div>
          </header>
          <div className='category-item-index'>
            {mealKitItems}
          </div>
        </div>
      
    )
  } 
}

const mSTP = (state) => {
  return {
    mealKit: state.entities.categories,
    products: state.entities.products
  }
};

export default connect(mSTP, null)(MealKitIndex);

