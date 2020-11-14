import React from 'react';

const ProductDisplay = ({product }) => {
  const { name, price, photo_url } = product;
  return(
    <div className='product-display'>
      <img className='product-img-splash' src={photo_url} alt=""/>
      <h5>{name}</h5>
      <h6>${parseFloat(price).toFixed(2)}</h6>
      <button className="product-btn">Add to Cart</button>
    </div>
  )
};

export default ProductDisplay;