import React from 'react';
import ProductDisplay from '../products/product_display'


class SeafoodIndex extends React.Component {
  constructor(props){
    super(props);
    this.state = {
      open: false
    }

  }

  render () {
    const seafoodIds = this.props.seafood[1].productId
    const products = this.props.products

    const seafoodItems = seafoodIds.map(id => 
      <ProductDisplay 
        key={`product-list-item${id}`}
        product={products[id]}
        className="category-index-item" /> 
      )

    return(
      <div className='seafood-index'>
        <header className="category-header" >
        <img src="https://oceanstar-seed.s3-us-west-1.amazonaws.com/e85fef_0864cbddb1a24b4d9440f82073e1e0d7_mv2_1_a.jpg" alt=""/>
        <div className="category-header-text">
          <h1>Fresh Seafood</h1>
          <p>Our high-quality seafood is always cut on the morning of your order, and carefully wrapped individually. It arrives directly to your door, incredibly fresh and ready to cook, refrigerate, or freeze needed. Click the product photo to learn more.</p>
        </div>
        </header>

        <td className='category-item-index'>
          {seafoodItems}
        </td>


      </div>
    )
  }

}

export default SeafoodIndex;
